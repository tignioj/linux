#!/bin/bash

echo -e "\n\n======tmux , vim ,zsh ===three in one script=======\n\n"
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
