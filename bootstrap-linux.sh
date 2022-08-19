#!/bin/bash

echo "Beginning bootstrapping for Linux"

echo "Determine Linux Distro"
current_distro=$(awk -F= '$1 == "ID" { print $2 }' /etc/*-release)
echo "$current_distro"

if [[ $current_distro =~ "rhel" || $current_distro =~ "fedora" ]]; then
	echo "Detected Fedora/RHEL platform"

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
elif [[ $current_distro =~ "opensuse" ]]; then
	echo "Detected openSUSE platform"

	# Download and install git
        if [[ ! -x /usr/local/bin/git ]]; then
                echo "Installing git"
                sudo zypper install -y git
        fi

        # Download and install Ansible
        if [[ ! -x /usr/local/bin/ansible ]]; then
                echo "Installing Ansible"
                sudo zypper install -y ansible
        fi
fi

echo "Bootstrapping is complete"
