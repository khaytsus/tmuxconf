#!/bin/sh

# Fix prefix in tmux when in ssh
#echo "ssh connection; fixing prefix"

# Messes up other sessions
#tmux unbind C-a
#tmux unbind C-b
#tmux unbind ^a

tmux set prefix C-b
tmux bind-key C-b send-prefix
tmux bind-key ^b last-window

# Disable status-right (ie:  generally clock)
tmux set status-right ''

