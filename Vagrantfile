# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "roboxes/ubuntu2204"
  config.vbguest.auto_update = false

  config.vm.define "JoseRyann" do |aluno|
    aluno.vm.hostname = "JoseRyann"
    aluno.vm.network "private_network", ip: "192.168.57.10"

    aluno.vm.provider "virtualbox" do |vb|
      vb.name = "JoseRyann"
      vb.memory = 1024
    end
  end
  
  # Provisionamento com Ansible
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook_ansible.yml"
    ansible.compatibility_mode = "2.0"
  end
end