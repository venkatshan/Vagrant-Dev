Vagrant.configure(2) do |config|

  config.vm.define "dev1"  do |dev1|
    dev1.vm.hostname="dev1"
    dev1.vm.box = "ubuntu/trusty64"
    dev1.vm.network "private_network", ip: "192.168.33.51"
    dev1.vm.provision "shell", path: "provision.sh"
  end
end
