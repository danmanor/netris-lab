.PHONY: setup prerequisites cache deploy destroy verify connectivity

setup: prerequisites cache

prerequisites:
	ansible-playbook playbooks/prerequisites.yml

cache:
	ansible-playbook playbooks/cache.yml

deploy:
	ansible-playbook playbooks/deploy.yml

destroy:
	ansible-playbook playbooks/destroy.yml

verify:
	ansible-playbook playbooks/verify.yml

connectivity:
	ansible-playbook playbooks/connectivity.yml
