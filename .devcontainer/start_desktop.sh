#!/bin/bash
unset WAYLAND_DISPLAY
Xvfb :99 -screen 0 1280x800x24 &
sleep 2
DISPLAY=:99 dbus-launch startxfce4 &
sleep 3
x11vnc -display :99 -nopw -listen localhost -xkb -forever &
sleep 2
websockify --web=/usr/share/novnc 6080 localhost:5900 &
