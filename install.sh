#!/bin/bash
set -e

if command -v sudo &> /dev/null; then
    SUDO="sudo"
else
    SUDO=""
fi

# Install required packages
$SUDO apt-get update -y
$SUDO apt-get -y install zsh git vim

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# Homeshick
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone mtpettyp/dotfiles -b
$HOME/.homesick/repos/homeshick/bin/homeshick link dotfiles -f
