#!/bin/bash
tmux setw -g remain-on-exit on
tmux list-panes -F '#{pane_id} #{pane_active}' | awk '$2 == 0 {print $1}' | xargs -n 1 tmux kill-pane -t
tmux setw -g remain-on-exit off
