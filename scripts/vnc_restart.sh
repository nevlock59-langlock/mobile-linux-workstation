#!/data/data/com.termux/files/usr/bin/sh

echo "Stopping VNC :1 if running..."
vncserver -kill :1 2>/dev/null

echo "Starting VNC :1..."
vncserver :1 -geometry 1280x720 -localhost yes

echo
echo "Connect with VNC Viewer:"
echo "127.0.0.1:5901"
