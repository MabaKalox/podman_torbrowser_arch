FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    && pacman --noconfirm -S zenity kdialog xorg-xmessage gxmessage libxinerama libcups dbus-glib procps-ng \
    	torbrowser-launcher \
    && rm -rf /var/cache/pacman/pkg/*

USER tor
CMD torbrowser-launcher && while kill -0 $(pgrep -x firefox.real) 2>/dev/null; do sleep 1; done
