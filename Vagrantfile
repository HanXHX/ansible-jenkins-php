# -*- mode: ruby -*-
# vi: set ft=ruby :
# vi: set tabstop=2 :
# vi: set shiftwidth=2 :

Vagrant.configure("2") do |config|

  vms = [
    [ "debian-jessie", "deb/jessie-amd64", "192.168.125.100" ]
  ]

  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
    v.memory = 512
  end

  vms.each do |vm|
    config.vm.define vm[0] do |m|
      m.vm.box = vm[1]
      m.vm.network "private_network", ip: vm[2]
      m.vm.network "forwarded_port", guest: 10080, host: 10080
      m.vm.provision "ansible" do |ansible|
        ansible.playbook = "tests/test.yml"
        ansible.groups = { "test" => [ vm[0] ] }
        ansible.verbose = 'vv'
        ansible.sudo = true
      end
    end
  end
end
