# wifi
# scan:
nmcli dev wifi
# connect
iwconfig wlan0 essid name key password
second comment
https://unix.stackexchange.com/questions/92799/connecting-to-wifi-network-through-command-line
nmcli dev wifi connect RTKWifi_test2 ifname wlx40a5ef05a28
nmcli dev wifi connect RTKWifi_test2 ifname wlx40a5ef05a28 password
nmcli device show wlx40a5ef05a28c
nmcli con up <mySSID>

# openvpn:
/etc/openvpn/client/belrobotics-client.ovpn.conf
# Start using systemctl
sudo systemctl enable openvpn-client@belrobotics-client.ovpn
sudo systemctl start openvpn-client@belrobotics-client.ovpn
sudo systemctl status openvpn-client@belrobotics-client.ovpn
# Removing a failed service from list-units
sudo systemctl reset-failed openvpn@belrobotics.ovpn

# See result of execution
journalctl -u openvpn-client@belrobotics-client.ovpn.service -f -n 20

# Brightness
brightnessctl
directly /sys/class/backlight/intel_backlight/brightness
sudo usermod -aG video nikolai
`sudo apt install brightnessctl`

# set .Xresources
dpi 96 seems good
xdpyinfo | grep -B 2 resolution
xrandr --current
ln -s .config/awesome/.Xresources .Xresources
https://unix.stackexchange.com/questions/323741/dpi-settings-in-awesome-window-manager

# battery widget
install
https://github.com/horst3180/arc-icon-theme#installation
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# lock
sudo apt install i3lock
sudo apt install imagemagick
mkdir Pictures/tmp

# dmenu
sudo apt install dmenu

# scrot
sudo apt install scrot

# audio
`sudo apt install pavucontrol`

# bluetooth
https://simpleit.rocks/linux/shell/connect-to-bluetooth-from-cli/

# Player
sudo apt install playerctl

# DNS private address answer fix
https://wiki.archlinux.org/title/systemd-resolved
in /etc/systemd/resolved.conf.d/dns_servers.conf
```
[Match]
Name=tun0

[Resolve]
DNS=10.250.0.1
Domains=~vpn.belrobotics.com ~vpn.yamabikorobots.net
```

# fonts

```
ls .local/share/fonts/
JetBrainsMono-BoldItalic.ttf  JetBrainsMono-Regular.ttf
JetBrainsMono-Bold.ttf        SymbolsNerdFontMono-Regular.ttf
JetBrainsMono-Italic.ttf      SymbolsNerdFont-Regular.ttf
```

# kitty
`ln -s awesome/kitty kitty`

install

`https://sw.kovidgoyal.net/kitty/binary/`

In path

`ln -s ../kitty.app/bin/kitty kitty`
`ln -s ../../.config/kitty/toggle_kitty_theme.sh toggle_kitty_theme.sh`

# submodule

add `sparceCheckout = true` to `.git/modules/awesome-wm-widgets/config`

and `.git/modules/awesome-wm-widgets/info/sparse-checkout`

```
brightness-widget
volume-widget
cpu-widget
battery-widget
battery-widget
net-speed-widget
logout-menu-widget
```

# Natural scrolling

in `/usr/share/X11/xorg.conf.d/40-libinput.conf` add `Option "NaturalScrolling" "True"` to touchpad

# install git delta


# multi dpi screens
```bash
alias single_screen='echo -e "Xcursor.size: 36\nXft.dpi: 144" > ~/.Xresources && sync && xrdb .Xresources && xrandr -s 0 && echo "awesome.restart()" | awesome-client'
alias ye_screen='echo -e "Xcursor.size: 24\nXft.dpi: 96" > ~/.Xresources && sync && xrdb .Xresources && xrandr --output eDP-1 --auto --output HDMI-1 --auto --above eDP-1 && echo "awesome.restart()" | awesome-client'
`
