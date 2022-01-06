Vagrant.configure("2") do |config|  
  config.vm.box = "ubuntu/impish64"
  config.vm.define "master" do |master|
    master.vm.hostname = "server1"
    master.vm.network "private_network", type: "dhcp"
    master.vm.provision "shell", path: "microk8s.sh"
    master.vm.provider "virtualbox" do |vm|
      vm.name = "master"
      vm.cpus = 1
      vm.memory = 1024
    end
  end
  config.vm.define "worker" do |worker|
    worker.vm.hostname = "server2"
    worker.vm.network "private_network", type: "dhcp"
    worker.vm.provision "shell", path: "microk8s.sh"
    worker.vm.provider "virtualbox" do |vm|
      vm.name = "worker-1"
      vm.cpus = 1
      vm.memory = 1024
    end
  end
end
