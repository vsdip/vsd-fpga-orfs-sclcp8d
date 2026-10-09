#!/usr/bin/env bash
set -eu
export DISPLAY=:1

for attempt in $(seq 1 30); do
    if /usr/bin/xset -display "$DISPLAY" q >/dev/null 2>&1; then
        exec /usr/bin/dbus-run-session -- /usr/bin/startxfce4
    fi
    sleep 1
done

echo "X display $DISPLAY did not become ready" >&2
exit 1
