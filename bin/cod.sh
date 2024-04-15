#!/bin/bash

tmux new-session -s CODING -d -x "$(tput cols)" -y "$(tput lines)"

tmux split-window -p 20

tmux select-pane -U

tmux attach -t CODING

