#!/bin/bash

echo "Beginning bootstrapping for Linux"

echo "Determine Linux Distro"
if [ -f /etc/lsb-release ]; then
    	. /etc/lsb-release
    	OS=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
    	OS="Debian"
elif [ -f /etc/fedora-release ]; then
      OS="Fedora"
elif [ -f /etc/redhat-release ]; then
    	OS="Red Hat"
else
    	OS=$(uname -s)
fi


if [ "$OS" == "Ubuntu" ]; then
	echo "Detected Ubuntu platform"

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
elif [ "$OS" == "Fedora" ]; then
	echo "Detected Fedora platform"

  # Download and install zsh
	if [[ ! -x /usr/bin/zsh ]]; then
		echo "Installing zsh"
		sudo dnf install -y zsh
	fi

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

if [ ! "$SHELL" == "/usr/local/bin/zsh" ]; then
        echo "Switching to Oh-My-Zsh"#
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
