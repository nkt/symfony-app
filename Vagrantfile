VAGRANTFILE_API_VERSION = "2"

APP_PATH = "/var/www/app"
DB_TYPE = "mysql" # or postgresql
DB_ROOT_PWD = "root"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "private_network", ip: "10.10.10.10"

    config.vm.synced_folder ".", APP_PATH, id: "vagrant-root"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--memory", 1024]
    end

    config.vm.provision :shell do |shell|
        shell.path = "vagrant/provision.sh"
        shell.args = "#{APP_PATH} #{DB_TYPE} #{DB_ROOT_PWD}"
    end
end
