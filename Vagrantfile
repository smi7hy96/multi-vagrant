# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

#MULTI VAGRANT
Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "app", "/home/ubuntu/app"
    app.vm.provision "shell", path: "environment/app/provision.sh", privileged: false
  end
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/bionic64"
    db.vm.network "private_network", ip: "192.168.10.200"
    db.vm.provision "shell", path:"environment/db/provision.sh", privileged: false
    end
end

#ANSIBLE SETUP
# Vagrant.configure("2") do |config|
#   config.vm.define "app" do |app|
#     app.vm.box = "ubuntu/bionic64"
#     app.vm.network "private_network", ip: "192.168.10.100"
#     app.hostsupdater.aliases = ["development.local"]
#     app.vm.synced_folder "app", "/home/ubuntu/app"
#     app.vm.provision "ansible_local" do |ansible|
#       ansible.playbook = "playbook.yml"
#     end
#   end
# end
