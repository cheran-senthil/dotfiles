#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1, bar2 and bar3
polybar bar1 &
polybar bar2 &
polybar bar3

echo "Bars launched..."
