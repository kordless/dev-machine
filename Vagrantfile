VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-trusty-amd64"

  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  
  config.ssh.forward_agent = true
  
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.network :private_network, ip: "172.17.8.2"
  config.vm.hostname = "dev-machine"

  config.vm.synced_folder ".", "/opt/dev-machine", type: "nfs"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "provisioning/puppet"
    puppet.module_path = "provisioning/puppet/modules"
    puppet.manifest_file  = "dev.pp"
  end
end

