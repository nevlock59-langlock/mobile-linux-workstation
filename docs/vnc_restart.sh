#!/data/data/com.termux/files/usr/bin/bash

# Check if VNC server is running
if pgrep -f "Xtigervnc.*:1" > /dev/null; then
    # Check if port 5901 is listening
    if ! lsof -i :5901 | grep LISTEN > /dev/null; then
        echo "VNC is running but not listening on port 5901. Restarting..."
        vncserver -kill :1
        sleep 1
        vncserver :1 -geometry 1280x720 -depth 24 > ~/vnc.log 2>&1 &
    else
        echo "VNC is running and listening properly on port 5901."
    fi
else
    echo "VNC is not running. Starting new session..."
    vncserver :1 -geometry 1280x720 -depth 24 > ~/vnc.log 2>&1 &
fi
