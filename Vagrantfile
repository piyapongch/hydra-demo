# -*- mode: ruby -*-
# vi: set ft=ruby :

%x(vagrant plugin install vagrant-hostsupdater) unless Vagrant.has_plugin?('vagrant-hostsupdater')

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos6.5"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "//libroot/ITS_Share/Tricia/vagrantboxes/golden_centos65-x86_64-20140319.box"

  config.vm.network :private_network, ip: "192.168.33.101"
  config.vm.hostname = "hydra-demo"
 
  config.vm.synced_folder "./", "/var/www/sites/hydra-demo",
    owner: "vagrant",
    group: "vagrant"
  config.vm.provision "shell", path: "setup.sh"
end
