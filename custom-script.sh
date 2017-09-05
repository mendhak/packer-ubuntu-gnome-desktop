#!/usr/bin/env bash

set -eux

# Sample custom configuration script - add your own commands here
# to add some additional commands for your environment
#
# For example:
# yum install -y curl wget git tmux firefox xvfb

apt install -y git nano figlet 
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce


echo "Installing Gnome extensions"
wget https://raw.githubusercontent.com/brunelli/gnome-shell-extension-installer/master/gnome-shell-extension-installer -O /tmp/gnome-shell-extension-installer.sh
chmod +x /tmp/gnome-shell-extension-installer.sh
/tmp/gnome-shell-extension-installer.sh 307
/tmp/gnome-shell-extension-installer.sh 2
/tmp/gnome-shell-extension-installer.sh 1031
gnome-shell-extension-tool -e dash-to-dock@micxgx.gmail.com
gnome-shell --replace &