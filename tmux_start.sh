#!/bin/zsh
#
# 1 MAY 2023  
#
#   PURPOSE:    Replaces ~/.tmux.conf with zsh script
#   NOTE:       Be sure no ~/.tmux.conf
#               Be sure no other sessions
#
#   TODO:   !so how does -A work?
#
#tmux new-session -A -s jimSession -D
SESSION=jimSession
tmux new-session -d -A -s $SESSION
#
#tmux new-session -s jimSession -d 

#   tmux creates first window when session created; 
tmux rename-window -t $SESSION:0  ZERO
tmux new-window -t $SESSION:1 -n NVIM
tmux new-window -t $SESSION:2 -n TWO
tmux new-window -t $SESSION:3 -n THREE
tmux new-window -t $SESSION:4 -n FOUR
tmux new-window -t $SESSION:5 -n free

tmux select-window -t $SESSION:1


##  BIND-KEY
## USAGE:   hold control & shift key, tap left or right arrow
#   FAIL: (why?)
#
tmux bind-key -n C-S-Left previous-window
tmux bind-key -n C-S-Right next-window

tmux bind-key r source-file ~/.tmux.conf \; display-message " Config reloaded.."

# Works
tmux bind-key -n C-Left previous-window 
tmux bind-key -n C-Right next-window

#
tmux -2 attach-session -t $SESSION 


