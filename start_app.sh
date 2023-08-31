#!/bin/bash

tmux new-session -d -s hanamisession
tmux split-window -h
tmux send-keys -t 0 'bundle exec sidekiq -r ./config/sidekiq.rb' C-m
tmux split-window -v -t 0
tmux send-keys -t 1 'bundle exec hanami s' C-m
tmux select-pane -t 2
tmux attach-session -t hanamisession