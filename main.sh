#!/usr/bin/env bash

# Install minimal dependencies
if [[ "$(uname)" == 'Darwin' ]]; then
    # Install Homebrew if missing
    which brew > /dev/null || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # Install Ansible if missing
    which ansible-playbook > /dev/null || brew install ansible
    # Install oh my zsh
    if [ ! -d "~/.oh-my-zsh" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi 
elif [[ "$(uname)" == 'Linux' ]]; then
    which ansible-playbook > /dev/null || sudo apt install -y ansible
    which python-apt > /dev/null || sudo apt install -y python-apt
fi

# Provision machine with ansible
if [[ "$(uname)" == 'Darwin' ]]; then
    ansible-playbook -i "localhost," -c local --become-method=su playbook.yml --skip-tags ubuntu
elif [[ "$(uname)" == 'Linux' ]]; then
    ansible-playbook -i "localhost," -c local --become-method=su playbook.yml --skip-tags mac 
fi


# # Provision machine with ansible
# if [ -z "$1" ];
# then
#     : # $1 was not given
#     ansible-playbook -i "localhost," -c local --become-method=su playbook.yml
# else
#     : # $1 was given
#     ansible-playbook -i "localhost," -c local --become-method=su playbook.yml --start-at-task "$1"
# fi
