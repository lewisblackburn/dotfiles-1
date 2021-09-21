#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bottom -r --config='~/.config/polybar/config' &

polybar top -r --config='~/.config/polybar/config' &
# polybar bottom -r --config='~/.config/polybar/config' &

echo "Bars launched..."
