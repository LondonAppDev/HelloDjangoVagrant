# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :hellodjangovagrantvm do |django_config|
    django_config.vm.box = "hashicorp/precise64"

    django_config.vm.forward_port 80, 8080
    django_config.vm.forward_port 8000, 8081
    django_config.vm.forward_port 1989, 1989


    django_config.vm.provision :shell, path: "vagrant_files/bootstrap.sh"

  end
end
