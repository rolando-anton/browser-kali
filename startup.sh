#!/bin/bash
#update
apt-get update -y &  apt-get upgrade -y & apt-get dist-upgrade -y

export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 5
xfce4-session&
x11vnc -display :1 -nopw -listen localhost -xkb -forever &
cd /root/noVNC && ln -s vnc.html index.html && ./utils/launch.sh --vnc localhost:5900
