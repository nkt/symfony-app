VAGRANTFILE_API_VERSION = "2"

DB_TYPE = "postgresql" # mysql/sqlite

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "private_network", ip: "10.10.10.10"

    config.vm.synced_folder ".", "/vagrant", id: "vagrant-root",
        :nfs => /darwin|linux/ =~ RUBY_PLATFORM

    config.vm.provider "virtualbox" do |vb|
        # vb.name = "vm_name"
        vb.memory = 1024
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.provision :shell do |shell|
        shell.path = "vagrant/provision.sh"
        shell.args = "#{DB_TYPE} #{DB_ROOT_PWD}"
    end
end
