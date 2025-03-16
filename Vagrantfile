# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "roboxes/ubuntu2204"
  config.vbguest.auto_update = false

  config.vm.define "Ryann-Antony-Gabriel" do |aluno|
    aluno.vm.hostname = "Ryann-Antony-Gabriel"
    aluno.vm.network "private_network", ip: "192.168.57.10"

    aluno.vm.provider "virtualbox" do |vb|
      vb.name = "Ryann-Antony-Gabriel"
      vb.memory = 1024
    end
  end
  
  # Provisionamento com Ansible
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook_ansible.yml"
    ansible.compatibility_mode = "2.0"
  end
end