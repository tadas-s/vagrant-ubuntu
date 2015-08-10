Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'trusty64.box'
  config.vm.network :private_network, ip: '10.0.0.1'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
  end

  config.vm.provision 'configure', type: 'shell', inline: <<-SHELL
    /vagrant/provision.sh
  SHELL

  config.vm.provision 'cleanup', type: 'shell', inline: <<-SHELL
    /vagrant/cleanup.sh
  SHELL
end