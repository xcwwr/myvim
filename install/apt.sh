#!/usr/bin/env bash

VIM_HOME=$HOME/.vim
INSTALL_HOME=$VIM_HOME/install
source $INSTALL_HOME/command.sh

sudo apt-get update
# apt-get update

install_or_skip "sudo apt-get install -y curl" "curl"
install_or_skip "sudo apt-get install -y universal-ctags" "ctags"
if version_gt "node" "v12.0.0"; then
    curl -sL install-node.vercel.app/lts | bash
    # curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
    # sudo apt install -y nodejs
fi

