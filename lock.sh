#!/bin/bash
scrot ~/Pictures/tmp/screenshot.png
convert ~/Pictures/tmp/screenshot.png -blur 0x5 ~/Pictures/tmp/screenshotblur.png
i3lock -i ~/Pictures/tmp/screenshotblur.png
rm ~/Pictures/tmp/screenshot.png ~/Pictures/tmp/screenshotblur.png
