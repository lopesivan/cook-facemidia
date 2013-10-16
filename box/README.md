vagrant box add facemidia precise.box

vagrant init facemidia
  
vagrant up

vagrant ssh

vagrant destroy
vagrant box remove facemidia

ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1

vagrant provision

vagrant plugin install vagrant-vbox-snapshot

knife cookbook site download apache2

mkdir cookbooks
tar xvzf apache2-*.tar.gz -C cookbooks

sudo apt-get install lxc cgroup-lite redir
