# dev-machine

Dev machine setup with ansible scripts.

Installs all the apps and tools I need after a clean install of Mac OS or Ubuntu.

## Usage

### Quick start

`git clone https://github.com/nmrshll/dev-machine.git && cd dev-machine && ./main.sh`

**WARNING: This *will* install and modify packages on your machine. Read through the files in [`roles/dev-machine/tasks`](https://github.com/nmrshll/dev-machine/tree/master/roles/dev-machine/tasks) so you know what will happen.**

##### Alternatively, download the folder as a .zip from github and run `./main.sh`

### Requirements

- git (for the quick start one-liner command)
- ansible (will be auto-installed if missing)
- homebrew (macOS only) (will be auto-installed if missing)


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
- docker, docker-compose, kubernetes (kubectl, minikube)
- virtualbox & vagrant

## Related

For more information on how this work and how to create your own from scratch, see Steve Edson's [blog post](https://steveedson.co.uk/ansible/dev-machine).
