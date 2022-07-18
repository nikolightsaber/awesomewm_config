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
sudo usermod -aG video nikolai
