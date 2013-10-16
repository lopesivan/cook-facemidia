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

destroy:
	@vagrant $@

remove:
	@vagrant box $@ $(VM)

##############################################################################
reload:
	@vagrant $@

status:
	@vagrant $@

halt:
	@vagrant $@

init:
	@vagrant $@ $(VM)

up:
	@vagrant up

knife-init.sh:
	@wget https://raw.github.com/lopesivan/ubuntu-server/master/knife-init.sh

env: knife-init.sh
	@bash knife-init.sh env

##############################################################################
purge: remove destroy
clean: purge
	@rm -rf env
	@rm -rf knife-init.sh
