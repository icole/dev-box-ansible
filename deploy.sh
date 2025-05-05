#! /bin/bash
ansible-galaxy install -r "./requirements.yml"
ansible-galaxy collection install -r "./requirements.yml"

ansible-playbook -i "localhost," "./main.yml" --ask-become-pass --connection=local
