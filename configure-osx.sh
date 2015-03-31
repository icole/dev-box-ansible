set -e

. lib-ui.sh
. lib-misc.sh

CONFIG_DIRECTORY="$HOME/Config"
ANSIBLE_CONFIGURATION_DIRECTORY="$HOME/.ansible.d"

rm -rf $ANSIBLE_CONFIGURATION_DIRECTORY

mkdir -p $CONFIG_DIRECTORY
mkdir -p $ANSIBLE_CONFIGURATION_DIRECTORY/{roles,downloads}

cp -R ansible/* $ANSIBLE_CONFIGURATION_DIRECTORY
cp -R topics/* $ANSIBLE_CONFIGURATION_DIRECTORY/roles/

ansible-playbook -i $ANSIBLE_CONFIGURATION_DIRECTORY/inventories/osx $ANSIBLE_CONFIGURATION_DIRECTORY/osx.yml --connection=local

brew linkapps
