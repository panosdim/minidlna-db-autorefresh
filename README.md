# MiniDLNA DB Auto Refresh

A systemd timer that auto refresh the MiniDLNA DB every day at 00:00 clock.
Because inotify setting in minidlna configuration is not working with Remote File systems,
you can use this systemd timer that auto refresh the MiniDLNA DB.


## Installation

In order to install it run `$ install.sh`.
Please note that you must be on a Linux machine with systemd.
