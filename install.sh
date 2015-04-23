#!/bin/bash

# Prompt to overwrite all current vim settings
read -r -p "Overwrite all current VIM settings for the current user and place old settings in ~/.vim.bak directory?" response
response=${response,,} #tolower
if [[ $response =~ ^(yes|y)$ ]]
then
    #noop
    echo "Installing..."
else
	exit
fi

# Move .vimrc and .vim into a backup directory
rm -rf ~/.vim.bak
mkdir -p ~/.vim.bak
mv ~/.vimrc ~/.vim.bak
cp -r ~/.vim ~/.vim.bak
rm -rf ~/.vim
cp -r .vim ~/.vim

# Move current directories and files into .vim.bak

# Install pathogen (Tim Pope)
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Copy default .vimrc
cp .vimrc ~

# Setup solarized theme
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# Install Nerdtree
git clone https://github.com/scrooloose/nerdtree.git

# Install FuzzyFinder
git clone https://github.com/vim-scripts/FuzzyFinder
