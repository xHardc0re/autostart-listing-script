echo "User-specific autostart applications:"
ls -la ~/.config/autostart/

echo "System-wide autostart applications:"
ls -la /etc/xdg/autostart/

echo "User crontab @reboot jobs:"
crontab -l | grep '@reboot'

echo "System-wide crontab @reboot jobs:"
sudo grep '@reboot' /etc/crontab

echo "Enabled systemd services:"
systemctl list-unit-files --type=service --state=enabled

echo "Enabled systemd timers:"
systemctl list-unit-files --type=timer --state=enabled

echo "Enabled systemd sockets:"
systemctl list-unit-files --type=socket --state=enabled

echo "Enabled systemd path units:"
systemctl list-unit-files --type=path --state=enabled

echo "init.d scripts:"
ls -la /etc/init.d/

echo "User-specific systemd services:"
systemctl --user list-unit-files --type=service --state=enabled
