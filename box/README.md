vagrant box add facemidia precise.box

vagrant init facemidia

vagrant up

vagrant ssh

vagrant destroy
vagrant box remove facemidia

ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1

vagrant plugin install vagrant-vbox-snapshot

vagrant provision

knife cookbook site download apache2
mkdir cookbooks
tar xvzf apache2-*.tar.gz -C cookbooks

sudo apt-get install lxc cgroup-lite redir
vagrant plugin install vagrant-lxc

vagrant up --provider=lxc
vagrant box add quantal64 /home/ivan/vagrant-lxc-quantal64-2013-07-12.box
