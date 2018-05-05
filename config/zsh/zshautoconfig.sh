#!/bin/bash

echo"======This is oh-my-zsh config script======="
echo "Do you want to confit it by wget||crul or git?"
echo "1. by wget or crul "
echo "2. by git"
read -p "you number is :(defalut is 2)" -t 5 NUM
if [[ $? -eq 142 ]]
then
	NUM=2
else
echo "you choose $NUM"
fi

if [[ $NUM -eq 1 ]]
then
	if test $(which wget)
	then
		echo "wget it"
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	elif test $(which crul)
	then
		echo "crul it"
		sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	else
		echo "no wget or crul,Now auto install wget and crul in you computer"
		#tesh system====================
		echo "testing your system========"
		if  ( uname -a | grep -i 'arch' )
		then
			echo "your system is archlinux"
			echo 000000 | sudo -S pacman -S --noconfirm wget crul
			sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		elif ( uname -a | grep -i 'ubuntu' )
		then
			echo "your system is ubuntu"
			echo 000000 | sudo -S apt-get install wget crul
			sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		fi
		#===============================
	fi
elif [[ $NUM -eq 2 ]]
then
	echo -e "\n\ngit clone oh-my-zsh"
		git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	echo "done"
	echo -e "\n\n=======git clone theme======="
		git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	echo "done"
	echo -e "\n\n=======mkdir -p ..========"
		mkdir -p ~/.oh-my-zsh/plugins/incr 
	echo "done"
	echo -e "\n\n========chomd 777 incr-0.2.zsh,please give the power========"
		echo 000000 | sudo -S chmod 777 incr-0.2.zsh
	echo "done"
	echo -e "\n\n========cp incr.. ~/.oh-m..============"
		cp incr-0.2.zsh ~/.oh-my-zsh/plugins/incr/
	echo "done"
	echo -e "\n\n===========cp .zshrc ~/==============="
		cp .zshrc ~/
	echo "done"
	echo -e "\n\n==========git clone plugins of hl========"
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	echo "done"
	echo -e "\n\ngit clone clone of auto suggestion====>"
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	echo "done"
	echo -e "\n\ninstalling fonts-powerline====>"
		git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts &&sh install.sh	
		cd ..
		rm -rf fonts
		cd ..
	echo "done"
		zsh
	echo -e "complete"
	echo -e "\n\nnow you should choose the font of powerline in the shell config\n\n"
fi



	
