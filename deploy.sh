#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
if [[ ! -d ~/.tmux/plugins/tpm ]]
then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
if [[ -f ~/.tmux.conf ]]
then
	mv ~/.tmux.conf ~/.tmux.conf.old
fi
if [[ -f ~/.vimrc ]]
then
	mv ~/.vimrc ~/.vimrc.old
fi
cp .tmux.conf ~/
cp .vimrc ~/
echo "     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄     "
echo "▄█▀▀▀ tmux + vim environment deployed ▀▀▀█▄"
echo "█     press <C-space> + I inside tmux     █"
echo "█     and use ':PlugInstall' in vim to    █"
echo "█     finish the installation             █"
echo "█                                         █"
echo "█                                         █"
echo "█      Thanks for using this script       █"
echo "▀█▄▄▄                                 ▄▄▄█▀"
echo "     ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀     "
