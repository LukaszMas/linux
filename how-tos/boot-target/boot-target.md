# How-To Manipulate default boot target (cmd):

Ref guide at [cyberciti][1]

1. To find which target unit is used by default:
    - `systemctl get-default`

2. To change mode to the `multi-user`:
    - `sudo systemctl set-default multi-user.target`
    - `sudo reboot`

3. To change mode to the `graphical UI`:
    - `sudo systemctl set-default graphical.target`
    - `sudo reboot`

[1]: <https://www.cyberciti.biz/faq/switch-boot-target-to-text-gui-in-systemd-linux/> "cyberciti.biz"
