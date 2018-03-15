compton -b --backend xrender &
urxvtd -q -f -o &
wal -R -a "80" &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
nm-applet &
dunst &
setxkbmap -model pc105 -layout "us,es" -variant "altgr-intl," -option grp:alt_shift_toggle &
xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal &
exec i3
