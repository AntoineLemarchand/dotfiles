#!/bin/sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/AntoineLemarchand/dotfiles /tmp
mv tmp/dotfiles/.tmux.conf ~/
mv tmp/dotfiles/.vimrc ~/
echo "tmux + vim environment deployed, press <C-space>I inside tmux to finish install"
