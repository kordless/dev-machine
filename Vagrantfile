VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/wily64"

  config.ssh.forward_agent = true
  
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.network :private_network, ip: "172.17.8.3"

  #config.vm.synced_folder ".", "/opt/dev-machine"
  config.vm.synced_folder ".", "/opt/dev-machine", type: "nfs"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--nictype1", "virtio" ]
    vb.customize ["modifyvm", :id, "--nictype2", "virtio" ]
  end

  config.vm.provision "shell", path: "./provisioning/provision.sh"
end

