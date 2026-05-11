# Keyboard / Input Recovery

## 현재 설정

- Input method: fcitx5
- Xfce4/VNC 시작 시 ~/.vnc/xstartup에서 fcitx5를 실행한다.

## xstartup 설정

```bash
# Korean input method: fcitx5
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
  fcitx5 -d
```

## 확인 방법

1. VNC Viewer로 127.0.0.1:5901 접속
2. Xfce 안에서 Terminal 또는 텍스트 편집기 실행
3. 영어 입력 확인
4. 한글 입력 또는 전환키 확인

## 문제 발생 시

```bash
./scripts/vnc_restart.sh
```
