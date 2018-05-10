#!/bin/bash
#
#echo "========This is vim auto config script=========="
#	echo "git clone vundle====>"
#	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#	echo "done"
#	echo -e "\n\ncp .vimrc ~/====>"
#	cp .vimrc ~/
#	echo "done"
#	echo -e "\n\nInstalling plugins====>"
#	vim +PluginInstall +qall
#	echo "done"
#	echo "Enjoy"

echo -e "\n\nspacevim=================>>\n\n"
echo 000000 | sudo -S pacman -S --noconfirm --needed curl
echo "1.Chinese"
echo "2.English"
read -p "cn or en?(default is cn),Input your number:" -t 5 CN_OR_EN
if [[ $? -eq 142 ]]
then
  echo "timeout, default cn"
  curl -sLf https://spacevim.org/cn/install.sh | bash
else
  if [[ $CN_OR_EN -eq 1 ]]
  then
    curl -sLf https://spacevim.org/cn/install.sh | bash
  else
    curl -sLf https://spacevim.org/install.sh | bash
  fi
fi
