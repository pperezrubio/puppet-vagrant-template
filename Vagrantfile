Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.
  module_path = ["modules", "services"]

  ubuntu_oneiric_box = "ubuntu-11.10-server-amd64-bvox"
  ubuntu_oneiric_url = "http://intranet.bvox.net/vagrant/ubuntu-11.10-server-amd64-bvox.box"

  box_name = ubuntu_oneiric_box
  box_url = ubuntu_oneiric_url

  config.vm.define :demo1 do |config|
    config.vm.forward_port('ssh', 22, 2200, :auto => true)
    config.ssh.max_tries = 100
    config.vm.box = box_name
    config.vm.box_url = box_url
    config.vm.network("192.168.99.101")	
    config.vm.host_name = "demo1"
    #config.vm.boot_mode = :gui
    config.vm.provision :puppet do |puppet|
      puppet.pp_path = "/tmp/vagrant-puppet"
      puppet.manifests_path = "manifests"
      puppet.module_path = module_path
      puppet.manifest_file = "site.pp"
    end
  end  

  config.vm.define :demo2 do |config|
    config.vm.forward_port('ssh', 22, 2201, :auto => true)
    config.ssh.max_tries = 100
    config.vm.box = box_name
    config.vm.box_url = box_url
    config.vm.network("192.168.99.102")	
    config.vm.host_name = "demo2"
    config.vm.provision :puppet do |puppet|
      puppet.pp_path = "/tmp/vagrant-puppet"
      puppet.manifests_path = "manifests"
      puppet.module_path = module_path
      puppet.manifest_file = "site.pp"
    end
  end
  
end
