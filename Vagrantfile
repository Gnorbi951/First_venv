# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #Box settings
  config.vm.box = "generic/debian10"

  #Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  #you can add a name to this by editing /etc/hosts on your host
  config.vm.network "private_network", ip: "192.168.33.10"
  config.ssh.forward_agent = true
  # config.vm.network "public_network"

  #Folder Settings
  #First param is your host second is your guest
  #config.vm.synced_folder ".", "/etc"

  #Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048 #sets memory size
    vb.cpus = 4 #sets cpu thread number
  end

  #Provision Settings
  #  config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  config.vm.provision "file", source: "./id_rsa.pub", destination: "$HOME/id_rsa.pub"
  config.vm.provision "shell", path: "provision.sh"
end
