# dev-machine

Dev machine setup with ansible scripts.
Installs everything I need on a clean install of Mac OS or Ubuntu.


Runs ansible, provisioning local machine with dev tools and setup.

## Requires

Currently, Ansible and Brew. These will be automatically installed if missing.

## Usage

### Quick start

`git clone https://github.com/nmrshll/dev-machine.git && cd dev-machine && ./main.sh`

**WARNING: This *will* install and modify packages on your machine. Read through the files in [`roles/dev-machine/tasks`](https://github.com/nmrshll/dev-machine/tree/master/roles/dev-machine/tasks) so you know what will happen.**

### Software installed by this script

- google chrome, firefox
- visual studio code & plugins, settings
- git & settings
- shell functions & aliases
- programming languages:
    - go
    - nodejs & npm, yarn
    - python
    - ruby
- gitkraken
- docker, docker-compose, kubernetes, kubectl, minikube
- virtualbox & vagrant

# Related

For more information on how this work and how to create your own from scratch, see Steve Edson's [blog post](https://steveedson.co.uk/ansible/dev-machine).
