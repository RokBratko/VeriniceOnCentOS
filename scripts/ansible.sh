#!/bin/bash

echo "fuck you ansible"

# Configuring werner-release
echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" > /etc/werner-release

# Installing epel
yum install -y epel-release

# Installing python-pip
yum install -y python-pip
yum remove -y epel-release
pip install --upgrade pip
echo "yum installed"

# installing Ansible
pip freeze > /tmp/freeze-begin
pip install --cache-dir /tmp/cache ansible
pip freeze > /tmp/freeze-end
echo "pip installed"

# Keyboard and language settings
localectl set-keymap de-latin1
dracut -f
echo "Keyboard stuff set"

mkdir random
# User
useradd -m verinice
passwd verinice
echo "User set"

# Install GUI

yum groupinstall "GNOME Desktop" "Graphical Administration Tools"
ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target
echo "gui set"
reboot