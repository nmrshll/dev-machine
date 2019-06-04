install:
	./main.sh


debug:
	ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook --ask-vault-pass -v -i "localhost," -c local --become-method=su playbook.yml --tags debug
debug-mac:
	ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook --ask-vault-pass -v -i "localhost," -c local --become-method=su playbook.yml --tags debug --skip-tags ubuntu

