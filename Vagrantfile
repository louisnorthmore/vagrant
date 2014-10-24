# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provision "shell", path: "provision.sh"

  config.vm.box = "debian80"
  config.vm.box_url = "https://downloads.sourceforge.net/project/vagrantboxjessie/debian80.box"

  config.vm.box_check_update = true
  
  config.vm.box_download_checksum = true
  config.vm.box_download_checksum_type = "md5"

  # set auto_update to false, if do NOT want to check the correct additions
    # version when booting this machine
    config.vbguest.auto_update = false


  config.vm.host_name = "fcc.local"
  config.vm.network "private_network", ip: "10.20.30.99"

  config.ssh.forward_agent = true

  config.vm.synced_folder "../", "/var/www/html/", :nfs => { :mount_options => ["dmode=777", "fmode=777"] }



  config.vm.provider "virtualbox" do |vb|
       # nicer name :)
       vb.name = "fcc.local"

       # headless mode
       vb.gui = false

       # Use VBoxManage to customize the VM. For example to change memory:
       vb.customize ["modifyvm", :id, "--memory", "1024"]
     end

end