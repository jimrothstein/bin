#!/bin/zsh
#
#
#
# 2023-11-05  
# PURPOSE:  AFTER tmux session, run this script to set layout (panes) 
# USAGE:    Run ~/bin/tmux_config.zsh  AFTER tmux session begins
#
tmux split-window -h -c $HOME -p 50 
tmux split-window -c $HOME -p 50 

# move to left
tmux select-pane -L

# error?   why?
# nvim-kick

