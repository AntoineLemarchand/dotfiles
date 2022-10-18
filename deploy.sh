#!/bin/bash

check_dependency () {
	dpkg -s $1 > /dev/null 2> /dev/null
	if [$? -eq 1]; then
		echo "missing " $1
		return 1
	fi
	return 0
}

echo "Would you like to deploy:"

echo -n "i3 (y/N) :"
read deploy_i3
if [ $deploy_i3 = "y" ]; then
	if [check_dependency i3]; then return 1; fi
	echo "deploying i3 config files..."
	cp ./i3/config ~/.config/i3/
	cp ./i3/i3blocks.conf ~/i3/i3blocks/
	echo "done, press <Meta>+<S-r> to reload environment"
else
	echo "pass"
fi

echo -n "tmux (y/N) :"
read deploy_tmux
if [ $deploy_tmux = "y" ]; then
	if [check_dependency git]; then return 1; fi
	if [check_dependency tmux]; then return 1; fi
	echo "deploying tmux config files..."
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp .tmux.conf ~/
	echo "done, if sessions are open press <C-space>I to reload environment"
else
	echo "pass"
fi

echo -n "vim (y/N) :"
read deploy_vim
if [ $deploy_tmux = "y" ]; then
	if [check_dependency curl]; then return 1; fi
	if [check_dependency git]; then return 1; fi
	echo "deploying vim config files..."

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
	cp .vimrc ~/
	echo "done, run :PlugInstall to finish"
else
	echo "pass"
fi

echo -n "vim-wiki (y/N) :"
read deploy_vim
if [ $deploy_tmux = "y" ]; then
	if [check_dependency git]; then return 1; fi
	echo "deploying vim-wiki files..."
	git clone git@github/antoinelemarchand/wiki.git ~/vimwiki
	echo "done, open index file with <Leader>ww"
else
	echo "pass"
fi

return 0
