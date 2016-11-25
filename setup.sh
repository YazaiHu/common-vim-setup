#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git unzip
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel unzip	
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

cd ~/ && curl -O https://github.com/YazaiHu/common-vim/archive/master.zip && unzip master.zip && cd common-vim-master && tar zxvf vim.tar.gz
#cd ~/ && git clone https://github.com/YazaiHu/common-vim.git && cd common-vim && tar zxvf vim.tar.gz
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old

mv -f ~/common-vim-master/vim/vimrc  ~/.vimrc
mv -f ~/common-vim-master/vim ~/.vim

echo "安装完成"
