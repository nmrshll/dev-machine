#!/usr/bin/env bash -xe

# INSTALL NIX
# nix-env --version || curl https://nixos.org/nix/install | sudo sh
# URL="https://nixos.org/nix/install"
URL="https://github.com/numtide/nix-flakes-installer/releases/download/nix-2.4pre20210126_f15f0b8/install"
[[ $(uname -s) = "Darwin" ]] && FLAG="--darwin-use-unencrypted-nix-store-volume" # workaround for macOS
command -v nix > /dev/null && echo "nix is already installed on this system." || bash <(curl -L $URL) --daemon $FLAG


cd ~
# TODO clone THIS repo
# git clone git://github.com/jwiegley/nixpkgs.git

# TODO make permanent
export PATH=$HOME/.nix-profile/bin:$PATH

# nix-channel --remove nixpkgs
# cd ~/.nix-defexpr
# rm -rf *

nix-channel --add https://github.com/nix-community/home-manager/archive/release-20.09.tar.gz home-manager
nix-channel --update

# TODO make permanent
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

# TODO install home manager
# nix-shell '<home-manager>' -A install

# install nix-darwin (enables configuring macOS settings with nix)
nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer

# TODO add this to bash/zsh configs, e.g. ~/.profile
# . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
# OR this if using home-manager to manage shell configs:
# . "/etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh"