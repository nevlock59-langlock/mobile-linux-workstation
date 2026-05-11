#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
export DISPLAY=:1
nohup vncserver :1 -geometry 1280x720 -depth 24 > ~/vnc.log 2>&1 &
