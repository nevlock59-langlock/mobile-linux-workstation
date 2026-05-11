# Boot Sequence Notes

The hardest part of this mobile Linux workstation was not only installation.

The difficult part was making the VNC/Xfce desktop session start and recover reliably on Android.

## Startup script

`docs/vncstart.sh` starts a VNC session on display `:1`.

```bash
termux-wake-lock
export DISPLAY=:1
nohup vncserver :1 -geometry 1280x720 -depth 24 > ~/vnc.log 2>&1 &
```

Key points:

- `termux-wake-lock` helps prevent Android from killing the session too aggressively.
- `DISPLAY=:1` matches the VNC display number.
- `1280x720` was used as the desktop resolution.
- Logs are redirected to `~/vnc.log`.

## Restart script

`docs/vnc_restart.sh` checks whether the VNC process and port are healthy.

It checks:

- whether `Xtigervnc` is running on display `:1`
- whether port `5901` is listening
- whether a restart is needed

This matters because the VNC process may exist even when the port is not listening correctly.

## Recovery idea

The setup uses a small self-healing pattern:

1. Check process
2. Check port
3. Kill broken session if needed
4. Restart VNC
5. Write logs

## Known access method

- Viewer app: RVNC Viewer
- Display: `:1`
- Port: `5901`
- Resolution: `1280x720`
