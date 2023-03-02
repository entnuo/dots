#!/usr/bin/env bash
# 
# killall polybar
# 
# #while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# 
# polybar bar &

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log
polybar -r bar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."