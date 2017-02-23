#!/bin/bash

echo "Beginning bootstrapping for Linux"

echo "Determine Linux Distro"
. /etc/lsb-release
OS=$DISTRIB_ID
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VER=$DISTRIB_RELEASE

if [ "$OS" == "Ubuntu" ]; then
	echo "Detected Ubuntu platform"

	echo "Swithing to root"

	# Download and install zsh
	if [[ ! -x /usr/bin/zsh ]]; then
		echo "Installing zsh"
		sudo apt-get install zsh
	fi

	# Download and install git
	if [[ ! -x /usr/local/bin/git ]]; then
		echo "Installing git"
		sudo apt-get install git
	fi

	# Download and install python
	if [[ ! -x /usr/local/bin/python ]]; then
		echo "Installing Python"
		sudo apt-get install python
	fi

	# Download and install Ansible
	if [[ ! -x /usr/local/bin/ansible ]]; then
		echo "Installing Ansible"
		sudo apt-get install ansible
	fi
fi

echo "Bootstrapping is complete"

if [ ! "$SHELL" == "/usr/local/bin/zsh" ]; then
       echo "Switching to Oh-My-Zsh"#
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
