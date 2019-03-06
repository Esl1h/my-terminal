#!/bin/bash
# reference: https://medium.com/@ivanaugustobd/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2

# install apps essentials:
sudo apt-get install most zsh python-pip python3-pip fonts-powerline git-extras wget 

# Install tldr - a terminal app to show examples of use apps (more quick than manpages)
sudo pip install tldr setuptools

echo "\n\n\n\n"
echo ################################
read -n 1 -s -r -p "Now, will be install oh-my-zsh - When finished, press CTRL+D to continue , ok? Press any key to continue"

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# install fonts do ZSH and powerlevel theme
mkdir ~/.fonts
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip  -P ~/.fonts/
cd ~/.fonts/ && unzip Hack.zip 

export MANPAGER="/usr/bin/most -s"

# install some plugins to zsh - syntax high lighting and command auto suggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# powerlevel9k zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# folder to install some apps
mkdir ~/Apps/

# install and config zshrc file:
rm ~/.zshrc
wget -c https://raw.githubusercontent.com/Esl1h/my-terminal/master/zshrc -O ~/.zshrc
echo export ZSH=\""$HOME"/.oh-my-zsh\" >> ~/.zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc
