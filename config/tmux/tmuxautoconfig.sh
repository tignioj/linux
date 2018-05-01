#!/bin/bash

echo "=====This is a auto-script about tmux====== "
echo "\n\ngit clone resurrect====>"
git clone https://github.com/tmux-plugins/tmux-resurrect.git ~/.tmux/tmux-resurrect
echo -e "git clone continuum====>"
git clone https://github.com/tmux-plugins/tmux-continuum.git ~/.tmux/tmux-continuum
echo -e "\n\ncp .tmux.conf ~/====>"
cp .tmux.conf ~/
echo "done"
echo "source file====>"
tmux source-file ~/.tmux.conf
echo "Enjoy"
