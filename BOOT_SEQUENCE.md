# Mobile Linux Workstation Boot Sequence

## 1. Termux 실행

Termux 앱을 연다.

## 2. 작업 폴더 이동

```bash
cd ~/workbox/mobile-linux-workstation
```

## 3. VNC 시작

```bash
./scripts/vncstart.sh
```

## 4. VNC Viewer 접속

```text
127.0.0.1:5901
```

## 5. VNC가 이상하면 재시작

```bash
./scripts/vnc_restart.sh
```

## 현재 확인된 정상 설정

- Display: `:1`
- Port: `5901`
- Address: `127.0.0.1:5901`
- Desktop: Xfce4
- xstartup: `~/.vnc/xstartup`
