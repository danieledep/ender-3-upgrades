#!/bin/bash
echo "installing pip3"
sudo apt update
sudo apt upgrade
sudo apt install python-pip
sudo pip install tornado esptool
sudo pip3 install esphome
sudo apt install -y mosquitto mosquitto-clients

echo "installing service"

sudo cp shutdown.service /etc/systemd/system/shutdown.service
sudo systemctl enable shutdown.service
sudo systemctl start shutdown.service