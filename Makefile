SHELL=/bin/bash

all: build sync

build:
	npx astro build

sync:
	ansible-playbook -i inventory.ini deploy.yml
