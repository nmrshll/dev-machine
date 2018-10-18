debug:
	ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook -v -i "localhost," -c local --become-method=su playbook.yml --tags debug

install:
	./main.sh