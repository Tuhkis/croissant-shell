#!/bin/sh

# Check if config files exist
if ! test -d "${HOME}/.config/croissant-shell"; then
	mkdir "${HOME}/.config/croissant-shell"
fi
if ! test -f "${HOME}/.config/croissant-shell/picom.conf"; then
	cp /usr/share/croissant-shell/conf/picom.conf \
		${HOME}/.config/croissant-shell/
fi

# Start the session
export XDG_CURRENT_DESKTOP="croissant-shell"
picom --config ${HOME}/.config/croissant-shell/picom.conf &
dunst &
exec dbus-launch --exit-with-session sowm
