#!/bin/bash
set -e

# Install required packages
sudo apt-get update -y
sudo apt-get -y install zsh git vim

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Homeshick
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone mtpettyp/dotfiles -b
$HOME/.homesick/repos/homeshick/bin/homeshick link dotfiles -f
