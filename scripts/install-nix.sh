#!/bin/bash
set -euxo pipefail

nix-env --version || curl -L https://nixos.org/nix/install | sh
. /Users/me/.nix-profile/etc/profile.d/nix.sh

ensureLineInFile() {
    line="$1"; file="$2";
    grep -qxF "$line" "$file" || echo "$line" >> "$file"
}

# enable unstable channels / experimental features (for flakes)
nix-env -f '<nixpkgs>' -iA nixUnstable
mkdir -p ~/.config/nix
ensureLineInFile 'experimental-features = nix-command flakes' ~/.config/nix/nix.conf

