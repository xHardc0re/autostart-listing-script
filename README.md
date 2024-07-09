# Autostart Applications and Services Listing Script

This script lists various autostarting applications and services configured on a Debian system. It checks several locations and methods commonly used for autostart configurations.

## Prerequisites

-   Bash shell environment
-   Debian-based Linux distribution (e.g., Debian, Ubuntu)

## Usage

1. **Clone the repository**:

    ```bash
    git clone https://github.com/xHardc0re/autostart-listing-script.git
    ```

2. **Navigate to the script directory**:

    ```bash
    cd autostart-listing-script
    ```

3. **Run the script**:

    ```bash
    ./list_autostart.sh
    ```

## Description

This script provides a comprehensive overview of autostarting applications and services on Debian systems. It checks the following locations and methods:

-   User-specific autostart applications (`~/.config/autostart/`)
-   System-wide autostart applications (`/etc/xdg/autostart/`)
-   User crontab `@reboot` jobs
-   System-wide crontab `@reboot` jobs
-   Enabled systemd services (`systemctl list-unit-files --type=service --state=enabled`)
-   Enabled systemd timers (`systemctl list-unit-files --type=timer --state=enabled`)
-   Enabled systemd sockets (`systemctl list-unit-files --type=socket --state=enabled`)
-   Enabled systemd path units (`systemctl list-unit-files --type=path --state=enabled`)
-   `init.d` scripts (`/etc/init.d/`)
-   User-specific systemd services (`systemctl --user list-unit-files --type=service --state=enabled`)

## Example Output

Running the script provides output similar to the following:

```
User-specific autostart applications:
dropbox.desktop
System-wide autostart applications:
gnome-settings-daemon.desktop
User crontab @reboot jobs:
@reboot /path/to/script.sh
System-wide crontab @reboot jobs:
@reboot root /path/to/another_script.sh
Enabled systemd services:
apache2.service
Enabled systemd timers:
backup.timer
Enabled systemd sockets:
dbus.socket
Enabled systemd path units:
tmp.mount
```
