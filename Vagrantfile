# encoding: utf-8
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
  config.vm.box = "ubuntu/xenial64"

  # set hostname
  config.vm.hostname = "SDFViewer.local"

  # virtualbox provider
  config.vm.provider "virtualbox" do |vb|
  vb.name = "SDFViewerDevEnv"
	vb.gui = "true"
  end

  # Port forwarding — uncomment this to use NAT instead of DHCP
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
