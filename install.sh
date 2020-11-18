#!/bin/bash
# ---------------------------------------------------------------------------
# install.sh -- Install minidlna-db-autorefresh
#
# Copyright 2020 Panagiotis Dimopoulos (panosdim@gmail.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at (http://www.gnu.org/licenses/) for
# more details.
#
# Version: 1.0
# ---------------------------------------------------------------------------

if [ "$EUID" -ne 0 ]; then
 	exec sudo bash "$0" "$@"
fi

SYSTEMD_PATH=/etc/systemd/system
cp minidlna-db-autorefresh.timer $SYSTEMD_PATH
cp minidlna-db-autorefresh.service $SYSTEMD_PATH

systemctl start minidlna-db-autorefresh.timer
systemctl enable minidlna-db-autorefresh.timer

