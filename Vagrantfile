Vagrant.configure("2") do |config|  
  config.vm.box = "ubuntu/impish64"
  config.vm.define "master" do |master|
    master.vm.hostname = "server01"
    master.vm.network "private_network", type: "dhcp"
    master.vm.provision "shell", path: "microk8s.sh"
    master.vm.provider "virtualbox" do |vm|
      vm.name = "master"
      vm.cpus = 1
      vm.memory = 1024
    end
  end
  config.vm.define "worker01" do |worker01|
    worker01.vm.hostname = "server02"
    worker01.vm.network "private_network", type: "dhcp"
    worker01.vm.provision "shell", path: "microk8s.sh"
    worker01.vm.provider "virtualbox" do |vm|
      vm.name = "worker01"
      vm.cpus = 1
      vm.memory = 1024
    end
  end
end
