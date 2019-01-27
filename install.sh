#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Perform linking
ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.zsh_exports" ~
ln -sf "$DOTFILES_DIR/.zsh_aliases" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~

# Install pathogen
if [ -e ~/.vim/autoload/pathogen.vim ]
then
    echo "Pathogen exists!"
else
    echo "Installing pathogen ...."
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
fi

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get zenburn color scheme
brew install wget
wget https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
mkdir ~/.vim/colors
mv zenburn.vim ~/.vim/colors
