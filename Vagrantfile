
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "mvirtual"
  config.vm.provider :virtualbox do |vb|
    vb.customize [ 'modifyvm', :id, '--name', 'mimaquinav' ]
    vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
    vb.customize [ 'modifyvm', :id, '--memory', '3096' ]
    config.vm.provision "shell", path: "MainStart.sh"
end
    
end
 
