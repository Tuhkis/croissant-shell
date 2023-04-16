#!/bin/sh

mkdir /usr/share/croissant-shell
mkdir /usr/share/croissant-shell/conf
cp picom.conf /usr/share/croissant-shell/conf/

cd sowm-tuhkis
make
make install
cd ..

chmod +x croissant-session.sh
cp croissant-session.sh /usr/bin/croissant-session
chmod +x /usr/bin/croissant-session

