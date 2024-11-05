#!/bin/bash
set -e

# Install required packages
sudo apt-get update -y
sudo apt-get -y install zsh git vim

OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"

# Check if the directory exists
if [ -d "$OH_MY_ZSH_DIR" ]; then
    # Rename the directory by appending .bak
    mv "$OH_MY_ZSH_DIR" "$OH_MY_ZSH_DIR.bak"
fi

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# Homeshick
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone mtpettyp/dotfiles -b
$HOME/.homesick/repos/homeshick/bin/homeshick link dotfiles -f
