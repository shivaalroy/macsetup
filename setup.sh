#!/bin/bash
ln -sf macsetup/.bash_aliases ~/

ln -sf macsetup/.ideavimrc ~/

# TODO: Make sure vim is brew-installed first
# Make sure to enable iTerm2 > Preferences > Profiles > Window > Keep background colors opaque
mkdir -p ~/.vim/bundle
if [[ ! -d "$HOME/.vim/bundle/Vundle.vim" ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
ln -sf macsetup/.vim_keymap ~/
ln -sf macsetup/.vimrc ~/
vim +PluginInstall +qall
