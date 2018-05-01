#!/bin/bash

echo "=====This is a auto-script about tmux====== "
echo "\n\ngit clone resurrect====>"
git clone https://github.com/tmux-plugins/tmux-resurrect.git
echo -e "git clone continuum====>"
git clone https://github.com/tmux-plugins/tmux-continuum.git
echo -e "\n\ncp .tmux.conf ~/====>"
cp .tmux.conf ~/
echo "done"
