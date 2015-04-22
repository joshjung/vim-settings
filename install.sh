#!/bin/bash

# Prompt to overwrite all current vim settings
read -r -p "Overwrite all current VIM settings for the current user and place old settings in ~/.vim.bak directory?" response
response=${response,,} #tolower
if [[ $response =~ ^(yes|y)$ ]]
then
	# Move .vimrc and .vim into a backup directory
	rm -rf ~/.vim.bak
	mkdir -p ~/.vim.bak
	mv ~/.vimrc ~/.vim.bak
	cp -r ~/.vim ~/.vim.bak
	rm -rf ~/.vim
else
	exit
fi

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
