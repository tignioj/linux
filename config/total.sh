#!/bin/bash

echo -e "\n\n======tmux , vim ,zsh ===three in one script=======\n\n"
echo "your system is ?"
echo "1.ubuntu,debian"
echo "2.Archlinux"
echo "3.tmux ,vim,zsh is installed!"
echo "4.do nothing"
read -p "Input you number: " -t 5 MY_SYS
MY_INPUT_STATE=$?
if [ $MY_INPUT_STATE -eq 142 ]
then
        #tesh system====================                
        echo "testing your system========"              
        if  ( uname -a | grep -i 'arch' )               
        then                                            
            echo "your system is archlinux"             
			MY_SYS=2
        elif ( uname -a | grep -i 'ubuntu' )            
        then                                            
            echo "your system is ubuntu"                
			MY_SYS=1
		else
			echo "what is you system?"
        fi                                              
        #===========================         
fi

if [ $MY_SYS -eq 1 ]
then
	echo "installing tmux vim zsh by apt-get"
	echo "000000" | sudo -S apt-get update
	echo "000000" | sudo -S apt-get install tmux vim zsh
	echo "done"
elif [ $MY_SYS -eq 2 ]
then
	echo "installing tmux vim zsh by pacman"
	echo "000000" | sudo -S pacman -Sy --noconfirm tmux vim zsh	
	echo "done"
elif [ $MY_SYS -eq 3 ]
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
