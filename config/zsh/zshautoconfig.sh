#!/bin/bash

echo"======This is oh-my-zsh config script======="
echo "Do you want to confit it by wget||crul or git?"
echo "1. by wget or crul "
echo "2. by git"
read NUM
echo "you choose $NUM"
if [ $NUM -eq 1 ]
then
	if test $(which wget)
	then
		echo "wget it"
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	elif test $(which crul)
		sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	then
		echo "crul it"
	else
		echo "no wget or crul, Please install wget or crul in you computer"
	fi
elif [ $NUM -eq 2 ]
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
		sudo chmod 777 incr-0.2.zsh
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



	
