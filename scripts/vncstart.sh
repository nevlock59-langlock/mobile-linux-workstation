#!/data/data/com.termux/files/usr/bin/sh

vncserver -list | grep -q ":1"

if [ $? -eq 0 ]; then
  echo "VNC is already running on :1"
else
  echo "Starting VNC on :1..."
  vncserver :1 -geometry 1280x720 -localhost yes
fi

echo
echo "Connect with VNC Viewer:"
echo "127.0.0.1:5901"
