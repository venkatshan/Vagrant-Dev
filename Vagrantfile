Vagrant.configure(2) do |config|

  config.vm.define "dev1"  do |dev1|
    dev1.vm.hostname="dev1"
    dev1.vm.box = "ubuntu/trusty64"
    dev1.vm.network "private_network", ip: "192.168.33.51"
    dev1.vm.network "forwarded_port", guest: 80, host: 6060, id: "nginx"
    dev1.vm.provision "shell", path: "provision.sh"

    config.vm.synced_folder "./", "/vagrant", disabled: true
    config.vm.synced_folder "./html", "/vagrant/html"

  end
end
