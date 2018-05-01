#!/bin/bash

echo -e "\n\n======tmux , vim ,zsh ===three in one script=======\n\n"
wait 2
echo "<<<<=================tmux===================>>>>"
. ./tmux/tmuxautoconfig.sh
echo "done"
echo "<<<<==================vim===================>>>>"
. ./vim/vimautoconfig.sh
echo "<<<<==================zsh===================>>>>"
. ./zsh/zshautoconfig.sh
echo "done"

echo "done"
