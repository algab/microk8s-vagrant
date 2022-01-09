Vagrant.configure("2") do |config|  
  config.vm.box = "ubuntu/impish64"
  config.vm.define "server01" do |server01|
    server01.vm.hostname = "server01"
    server01.vm.network "private_network", ip: "192.168.0.10"
    server01.vm.provision "shell", path: "microk8s.sh"
    server01.vm.provider "virtualbox" do |vm|
      vm.name = "server01"
      vm.cpus = 1
      vm.memory = 2048
    end
  end
  config.vm.define "server02" do |server02|
    server02.vm.hostname = "server02"
    server02.vm.network "private_network", ip: "192.168.0.11"
    server02.vm.provision "shell", path: "microk8s.sh"
    server02.vm.provider "virtualbox" do |vm|
      vm.name = "server02"
      vm.cpus = 1
      vm.memory = 2048
    end
  end
end
