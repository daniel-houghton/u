#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

sudo systemctl disable systemd-networkd-wait-online.service
sudo apt update && sudo apt upgrade -y
sudo apt install ubuntu-desktop -y
sudo apt update && apt install spice-vdagent spice-webdavd -y

sudo reboot
