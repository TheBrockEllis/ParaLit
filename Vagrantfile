# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Uses "ubuntu/trusty64" Ubuntu Server 14.04 LTS (Trusty Tahr) 64 bits
  # If you need 32 bits change this line by:
  #     config.vm.box = "ubuntu/trusty32"
  config.vm.box = "ubuntu/trusty64"

  # Forward the Rails server default port to the host.
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Provider-specific configuration.
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM (set to 1GB):
    vb.memory = "1024"
  end

  config.vm.synced_folder "./", "/vagrant"
  
  # Enable provisioning with a shell script. Install dev stack.
  config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
end
