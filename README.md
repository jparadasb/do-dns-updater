# dns-updater-digital-ocean

## Description

    This script allows to update a record using the Digital Ocean Network API.
    The idea is to allow connect to a device at home throw internet with a dinamic IP.

## Installation

    1. Change the line User to use the right user, line 10 of dns-updater.service.
    2. Createa file dns-upadter.env using the example file and put into the user folder.
    3. Change the following paths EnvironmentFile and ExecStart, lines 11 and 12 of dns-updater.service.
    4. Move dns-updater.service to `/etc/systemd/system/`
    5. Run `sudo systemctl start dns-updater.service`

