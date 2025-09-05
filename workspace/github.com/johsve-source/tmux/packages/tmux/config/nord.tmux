#+----------------+
#+ Plugin Support +
#+----------------+
#+--- tmux-prefix-highlight ---+
set -g @prefix_highlight_output_prefix "#[fg=#e0e0e0]#[bg=#1c1c1c]#[nobold]#[noitalics]#[nounderscore]"
set -g @prefix_highlight_output_suffix ""
set -g @prefix_highlight_copy_mode_attr "fg=brightcyan,bg=#1c1c1c,bold"

#+--------+
#+ Status +
#+--------+
set -g status-bg "#1c1c1c"
set-option -g status-style bg="#1c1c1c"

#+--- Bars ---+
set -g status-left "#[fg=#e0e0e0,bg=#303030]  #S #[fg=#303030,bg=#1c1c1c]"
set -g status-right '#[fg=#303030,bg=#1c1c1c]#[fg=#e0e0e0,bg=#303030] #(TZ="America/Los_Angeles" date +%H:%M) #[fg=#303030,bg=#303030]#[fg=#e0e0e0,bg=#303030] #H '

#+--- Windows ---+
set -g window-status-format "#[fg=#1c1c1c,bg=#303030]#[fg=#e0e0e0,bg=#303030] #I: #W #[fg=#303030,bg=#1c1c1c]"
set -g window-status-current-format "#[fg=#1c1c1c,bg=#e0e0e0]#[fg=#1c1c1c,bg=#e0e0e0,bold] #I: #W #[fg=#e0e0e0,bg=#1c1c1c]"
set -g window-status-separator ""

# Center the window list
set -g status-justify centre

#+----------------+
#+    Windows     +
#+----------------+
#+--- Panes ---+
set -g pane-border-style "fg=#303030"
set -g pane-active-border-style "fg=#e0e0e0"

# Seamless pane borders
set -g pane-border-status off
