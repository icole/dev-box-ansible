#set -e

#. lib-ui.sh
#. lib-misc.sh

ANSIBLE_CONFIGURATION_DIRECTORY="$HOME/Workspace/dotfiles/ansible"

ansible-galaxy install -r "$ANSIBLE_CONFIGURATION_DIRECTORY/requirements.yml"

ansible-playbook -i "localhost," "$ANSIBLE_CONFIGURATION_DIRECTORY/setup.yml" --ask-become-pass --connection=local
