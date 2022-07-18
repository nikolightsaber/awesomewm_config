# wifi
# scan:
nmcli dev wifi
# connect
iwconfig wlan0 essid name key password

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

# dmenu
sudo apt install dmenu

# scrot
sudo apt install scrot
