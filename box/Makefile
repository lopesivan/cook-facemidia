BOX = precise.box
VM  = facemidia

all: help

help:
	@cat README.md

##############################################################################
##############################################################################
##############################################################################

new:
	@vagrant box add $(VM) $(BOX)

##############################################################################
destroy:
	@vagrant $@

remove:
	@vagrant box $@ $(VM)

##############################################################################
reload:
	@vagrant $@ $(VM)

halt:
	@vagrant $@ $(VM)

init:
	@vagrant $@ $(VM)

up:
	@vagrant up

ssh:
	@echo ssh -p 2222 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1

knife-init.sh:
	@wget https://raw.github.com/lopesivan/ubuntu-server/master/knife-init.sh

env: knife-init.sh
	@bash knife-init.sh env

##############################################################################
purge: remove destroy
clean: purge
	@rm -rf env
	@rm -rf knife-init.sh
