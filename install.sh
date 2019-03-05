#!/bin/bash
# reference: https://medium.com/@ivanaugustobd/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2

# install apps essentials:
sudo apt-get install most zsh python-pip python3-pip fonts-powerline git-extras wget 

# Install tldr - a terminal app to show examples of use apps (more quick than manpages)
sudo pip install tldr setuptools

# folder to install some apps
mkdir ~/Apps/

# install fonts do ZSH and powerlevel theme
mkdir ~/.fonts && cd ~/.fonts/ 
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip  -P ~/.fonts/
unzip Hack.zip
 

export MANPAGER="/usr/bin/most -s"

# install some plugins to zsh - syntax high lighting and command auto suggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# powerlevel9k zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
