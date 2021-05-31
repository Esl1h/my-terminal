#!/bin/bash
# reference: https://medium.com/@ivanaugustobd/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2

# install apps essentials:
sudo apt-get install most zsh python3-pip fonts-powerline git-extras wget 

# Install tldr - a terminal app to show examples of use apps (more quick than manpages)
sudo pip3 install tldr setuptools

echo "\n\n\n\n"
echo ################################
read -n 1 -s -r -p "Now, will be install oh-my-zsh - When finished, press CTRL+D to continue , ok? Press any key to continue"

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# install fonts do ZSH and powerlevel theme
mkdir ~/.fonts
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip  -P ~/.fonts/
cd ~/.fonts/ && unzip Hack.zip 

# install some plugins to zsh - syntax high lighting and command auto suggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/johanhaleby/kubetail.git ~/.oh-my-zsh/custom/plugins/kubetail

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# powerlevel9k zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# install and config zshrc file:
rm ~/.zshrc
wget -c https://raw.githubusercontent.com/Esl1h/my-terminal/master/zshrc -O ~/.zshrc

mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions

# kube-shell
sudo pip install kube-shell

# kubens + kubectx
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
ln -s /opt/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh


wget -c https://raw.githubusercontent.com/johanhaleby/kubetail/master/completion/kubetail.zsh -O ~/.oh-my-zsh/completions/_kubetail.zsh

echo export ZSH=\""$HOME"/.oh-my-zsh\" >> ~/.zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc

# Customizing colors - kubens
echo 'export KUBECTX_CURRENT_FGCOLOR=$(tput setaf 6) # blue text ' >> ~/.zshrc 
echo 'export KUBECTX_CURRENT_BGCOLOR=$(tput setab 7) # white background ' >> ~/.zshrc
