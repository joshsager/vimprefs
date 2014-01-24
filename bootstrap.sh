#!/usr/bin/env bash

apt-get update
sudo apt-get install -y build-essental
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y zip
sudo apt-get install -y gzip
sudo apt-get install -y curl
sudo apt-get install -y bzip2
sudo apt-get install -y gdb
sudo apt-get install -y valgrind
sudo apt-get install -y git
cp /vagrant/.vimrc /home/vagrant
sudo chown vagrant /home/vagrant/.vimrc
ln -fs /vagrant /home/vagrant
sudo chown vagrant -R /home/vagrant/.vim
# vundle - vim plugin for managing plugins
	if [ ! -d /home/vagrant/.vim/bundle/vundle ]
		then
		git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
	fi
	echo " ############################################## INSTALL VIM - VUNDLE"
# Powerline - vim plugin
	if [ ! -d /home/vagrant/.vim/bundle/vim-powerline ]
	then
	git clone https://github.com/Lokaltog/vim-powerline.git /home/vagrant/.vim/bundle/vim-powerline
	fi
	echo " ############################################## INSTALL VIM - POWERLINE"
# mustang - vim color scheme
	if [ ! -d /home/vagrant/.vim/colors ]
		then
		mkdir /home/vagrant/.vim/colors
		wget https://raw.github.com/croaker/mustang-vim/master/colors/mustang.vim 
		mv mustang.vim /home/vagrant/.vim/colors
	fi
	echo " ############################################## INSTALL MUSTANG COLOR SCHEME"
# Set Git Color to be True
	git config --global color.ui true
# syntastic - vim plugin for error highlighting
	if [ ! -d /home/vagrant/.vim/autoload ]
		then
		 mkdir /home/vagrant/.vim/autoload
	    wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
		mv pathogen.vim /home/vagrant/.vim/autoload
	fi
	echo " ############################################## INSTALL pathogen"
	if [ ! -d /home/vagrant/.vim/bundle/syntastic ]
		then
		git clone https://github.com/scrooloose/syntastic.git /home/vagrant/.vim/bundle/syntastic
	fi
	echo " ############################################## INSTALL SYNTASTIC"
