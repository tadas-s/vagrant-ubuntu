#!/usr/bin/env bash

cd /vagrant

if [ ! -x "/usr/bin/ansible" ]; then
    echo "Will install Ansible..."
    apt-add-repository -y ppa:ansible/ansible
    apt-get install -y ansible
fi

ansible-playbook -i inventory site.yml --limit `hostname -f` --connection=local
