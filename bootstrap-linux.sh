#!/bin/bash

echo "Beginning bootstrapping for Linux"

echo "Determine Linux Distro"
if [ -f /etc/lsb-release ]; then
    	. /etc/lsb-release
    	OS=$DISTRIB_ID
elif [ -f /etc/fedora-release ]; then
      OS="Fedora"
elif [ -f /etc/redhat-release ]; then
    	OS="Red Hat"
else
    	OS=$(uname -s)
fi

if [ "$OS" == "Fedora" ]; then
	echo "Detected Fedora platform"

	# Download and install git
	if [[ ! -x /usr/local/bin/git ]]; then
		echo "Installing git"
		sudo dnf install -y git
	fi

	# Download and install python
	if [[ ! -x /usr/local/bin/python ]]; then
		echo "Installing Python"
		sudo dnf install -y python
		sudo dnf install -y python2-dnf
		sudo dnf install -y libselinux-python
	fi

	# Download and install Ansible
	if [[ ! -x /usr/local/bin/ansible ]]; then
		echo "Installing Ansible"
		sudo dnf install -y ansible
	fi
fi

echo "Bootstrapping is complete"