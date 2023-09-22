#!/bin/bash

if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing on-my-zsh..."
  git clone --branch=master --single-branch --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
fi

if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
  echo "Installing pathogen..."
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! -d ~/.vim/bundle/minibufexpl.vim ]; then
  echo "Installing minibufexpl..."
  git clone https://github.com/fholgado/minibufexpl.vim.git \
    ~/.vim/bundle/minibufexpl.vim
fi

if [ ! -d ~/.vim/bundle/vim-go ]; then
  echo "Installing vim-go..."
  git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
fi

if [ ! -d ~/.vim/bundle/vim-surround ]; then
  echo "Installing vim-surround ..."
  git clone https://github.com/tpope/vim-surround.git \
    ~/.vim/bundle/vim-surround
fi

function unlink_dot_files() {
  unlink ~/.gitconfig
  unlink ~/.gitignore_global
  unlink ~/.vimrc
  unlink ~/.zshrc
  unlink ~/.vimrcs
  unlink ~/.zshrcs
  unlink ~/.tmux.conf
}

# Setup symbol links to the files in the root directory of this repo.
function link_dot_files() {
  ln -s -f $(pwd)/gitconfig ~/.gitconfig
  ln -s -f $(pwd)/gitignore_global ~/.gitignore_global
  ln -s -f $(pwd)/vimrc ~/.vimrc
  ln -s -f $(pwd)/zshrc ~/.zshrc
  ln -s -f $(pwd)/vimrcs ~/.vimrcs
  ln -s -f $(pwd)/zshrcs ~/.zshrcs
  ln -s -f $(pwd)/tmux.conf ~/.tmux.conf
}

unlink_dot_files
link_dot_files

echo
echo "Remember to run :Helptags after installing plugin for pathogen"
