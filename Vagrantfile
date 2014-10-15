# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "debian_web"
  config.vm.box_url = "http://www.northmore.net/boxes/debian_web.box"

  config.vm.box_check_update = true
  
  config.vm.box_download_checksum = true
  config.vm.box_download_checksum_type = "md5"


  config.vm.host_name = "debian.web"
  config.vm.network "private_network", ip: "10.20.30.40"

  config.ssh.forward_agent = true

  config.vm.synced_folder "../", "/var/www/", :nfs => { :mount_options => ["dmode=777", "fmode=777"] }

  config.vm.provider "virtualbox" do |vb| 
   
     # nicer name :)
     #vb.name = config.vm.host_name

     # headless mode
     vb.gui = false
  
     # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "192"]
   end

end
