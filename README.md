# dev-machine

Dev machine setup with ansible scripts

For more information, see Steve Edson's [blog post](https://steveedson.co.uk/ansible/dev-machine).

Runs ansible, provisioning local machine with dev tools and setup.

## Requires

Currently, Ansible and Brew. These will be automatically installed if missing.

## Usage

Simply run `./main.sh`.

**WARNING: This *will* install and modify packages on your machine. Read through the files in `roles/` so you know what will happen.**

### One Liner

`git clone git@github.com:nmrshll/dev-machine.git && cd dev-machine && ./main.sh`
