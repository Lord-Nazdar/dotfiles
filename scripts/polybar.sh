killall polybar

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar -c $HOME/.i3/polybar.conf --reload top &
    done
else
    polybar -c $HOME/.i3/polybar.conf --log=info --reload top &
fi
