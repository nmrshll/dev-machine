debug:
	ansible-playbook -i "localhost," -c local --become-method=su playbook.yml --tags debug