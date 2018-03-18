compton -b --backend xrender &
wal -R -a "80" &
urxvtd -q -f -o &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
nm-applet &
dunst &
setxkbmap -model pc105 -layout "us" -variant "altgr-intl" -option grp:alt_shift_toggle &
xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal &
exec i3
