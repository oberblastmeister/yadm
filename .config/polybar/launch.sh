#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq misc &
polybar -rq tray &
polybar -rq ws &


echo "Polybar launched..."
