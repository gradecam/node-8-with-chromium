#!/bin/ash

dbus-daemon --session --fork
Xvfb ${DISPLAY} -ac -screen 0 "${SCREEN_WIDTH}x${SCREEN_HEIGHT}x24" >/dev/null 2>&1 &
fluxbox >/dev/null 2>&1 &

/bin/sh -c "$@"
