# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/provision.yml"
  end

  config.vm.box = "puphpet/debian75-x64"

  config.vm.host_name = "web"
  config.vm.network "private_network", ip: "10.20.48.69"

  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/var/www/html/", :nfs => { :mount_options => ["dmode=777", "fmode=777"] }

  config.vm.provider "virtualbox" do |vb|
       # nicer name :)
       vb.name = "web"

       # headless mode
       vb.gui = false

       # Use VBoxManage to customize the VM. For example to change memory:
       vb.customize ["modifyvm", :id, "--memory", "128"]
     end

end
