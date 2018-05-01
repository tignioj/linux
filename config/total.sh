#!/bin/bash

echo -e "\n\n======tmux , vim ,zsh ===three in one script=======\n\n"
echo "your system is ?"
echo "1.ubuntu,debian"
echo "2.Archlinux"
echo "3.tmux ,vim,zsh is installed!"
echo "4.do nothing"
read SYS
if [ $SYS -eq 1 ]
then
	echo "installing tmux vim zsh by apt-get"
	sudo apt-get update
	sudo apt-get install tmux vim zsh
	echo "done"
elif [ $SYS -eq 2 ]
then
	echo "installing tmux vim zsh by pacman"
	sudo pacman -Sy tmux vim zsh	
	echo "done"
elif [ $SYS -eq 3 ]
then
	echo "just config"
else
	exit
fi




echo "<<<<=================tmux===================>>>>"
cd tmux
./tmuxautoconfig.sh
cd ..
echo "done"
echo "<<<<==================vim===================>>>>"
cd vim
./vimautoconfig.sh
cd ..
echo "<<<<==================zsh===================>>>>"
cd zsh
./zshautoconfig.sh
cd ..
echo "done"

echo "enjoy"
