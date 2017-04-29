# -*- mode: ruby -*-
# vi: set ft=ruby :

# check guest additions plugin is installed
unless Vagrant.has_plugin?("vagrant-vbguest")
  puts
  warn "OOPS! vbguest plugin is not installed"
  puts
  warn "Run the following to install:"
  abort "vagrant plugin install vagrant-vbguest"
end

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # set hostname
  config.vm.hostname = "SDFViewer.local"

  # virtualbox provider
  config.vm.provider "virtualbox" do |vb|
  vb.name = "SDFViewerDevEnv" 
	vb.gui = "true"
  vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update -qq
    # Install git
    apt-get install -q -y git
  SHELL
end
end
