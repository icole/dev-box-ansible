# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"
  #config.vm.box = "jhcook/fedora25"

  config.vm.network :forwarded_port, guest: 22, host: 2222, disabled: true
  config.vm.network :forwarded_port, guest: 22, host: 2230, id: "ssh"

  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SCRIPT
    sudo apt-get update
    sudo apt-get install -y ansible
    mkdir ~/Workspace
    ln -s /vagrant/ ~/Workspace/dotfiles
  SCRIPT
end
