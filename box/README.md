vagrant box add facemidia precise.box

vagrant init facemidia
  
vagrant up

vagrant ssh

vagrant destroy
vagrant box remove facemidia

ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1

vagrant provision

vagrant plugin install vagrant-vbox-snapshot
