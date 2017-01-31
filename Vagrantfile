# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "fedora/25-cloud-base"
  #config.vm.box = "jhcook/fedora25"

  config.vm.network :forwarded_port, guest: 22, host: 2222, disabled: true
  config.vm.network :forwarded_port, guest: 22, host: 2230, id: "ssh"

  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SCRIPT
    sudo dnf update
    sudo dnf install -y ansible
    sudo dnf install -y python-dnf
    mkdir /home/vagrant/Workspace
    ln -s /vagrant/ /home/vagrant/Workspace/dotfiles
  SCRIPT
end
