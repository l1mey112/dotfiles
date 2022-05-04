hsetroot -solid "#774376" &

xset s 200 &
xss-lock screen-lock +resetsaver &

picom --show-all-xerrors -b --config ~/.config/picom/picom.conf &
exec i3 