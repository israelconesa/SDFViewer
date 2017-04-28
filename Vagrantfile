# -*- mode: ruby -*-
# vi: set ft=ruby :

<<<<<<< 8f0cf23ebd8b0b601e9039f1b41dd12771f11e3f
=======
# check guest additions plugin is installed
unless Vagrant.has_plugin?("vagrant-vbguest")
  puts
  warn "OOPS! vbguest plugin is not installed"
  puts
  warn "Run the following to install:"
  abort "vagrant plugin install vagrant-vbguest"
end

>>>>>>> Updated Vagrantfile
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

<<<<<<< 8f0cf23ebd8b0b601e9039f1b41dd12771f11e3f
=======
  # set hostname
  config.vm.hostname = "SDFViewer.local"

  # virtualbox provider
  config.vm.provider "virtualbox" do |vb|
    vb.name = "SDFViewerDevEnv"
	vb.gui = "true"
  vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]

>>>>>>> Updated Vagrantfile
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update -qq
    # Install git
    apt-get install -q -y git
  SHELL
end
<<<<<<< 8f0cf23ebd8b0b601e9039f1b41dd12771f11e3f
=======
end
>>>>>>> Updated Vagrantfile
