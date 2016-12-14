set -e

. lib-ui.sh
. lib-misc.sh

ANSIBLE_CONFIGURATION_DIRECTORY="/Users/icole/Workspace/dotfiles/ansible"

ansible-playbook -i "localhost," $ANSIBLE_CONFIGURATION_DIRECTORY/setup.yml --connection=local
