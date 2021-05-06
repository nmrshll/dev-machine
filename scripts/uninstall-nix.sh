#!/usr/bin/env bash -xe
#!/bin/bash
set -euxo pipefail

rmLineInFile() {
    if [[ ! -f $2 ]]; then echo "ERR: $\2 expects path to file !" && return; fi
    [[ $(uname -s) = "Linux" ]] && sudo sed -i "/${1}/d" $2;
    [[ $(uname -s) = "Darwin" ]] && sudo sed -i '' "/${1}/d" $2;
    cat $2
}

# for mac
# 1. Remove the entry from fstab using 'sudo vifs'. This edits /etc/fstab
rmLineInFile "LABEL=Nix" /etc/fstab

# 2. Destroy the data volume using 'diskutil apfs deleteVolume diskNsN'
diskutil apfs deleteVolume $(diskutil list | grep "Nix Store" | awk '$8 ~ /disk1s/ { print $8 }')

# 3. Remove the 'nix' line from /etc/synthetic.conf or the file
rmLineInFile "nix" /etc/synthetic.conf

# 4. delete all nix data
sudo rm -rf /etc/nix /nix /var/root/.nix-profile /var/root/.nix-defexpr /var/root/.nix-channels /Users/me/.nix-profile /Users/me/.nix-defexpr /Users/me/.nix-channels


# Alternatively
# sudo chown -R me /nix