#!/bin/bash

grep light ~/.config/kitty/kitty.conf > /dev/null \
    && sed -i -e "s/light/dark/" ~/.config/kitty/kitty.conf \
    || sed -i -e "s/dark/light/" ~/.config/kitty/kitty.conf

kill -USR1 $(pidof kitty)
