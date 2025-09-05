# Copyright (C) 2017-present Arctic Ice Studio <development@arcticicestudio.com>
# Copyright (C) 2017-present Sven Greb <development@svengreb.de>
# Copyright (C) 2022-present Jake Hamilton <jake.hamilton@hey.com>

# Project:    Nord tmux
# Repository: https://github.com/arcticicestudio/nord-tmux
# License:    MIT

# left: 
# right: 

#+----------------+
#+ Plugin Support +
#+----------------+
#+--- tmux-prefix-highlight ---+
set -g @prefix_highlight_output_prefix "#[fg=#1c1c1c]#[bg=default]#[nobold]#[noitalics]#[nounderscore]#[bg=#1c1c1c]#[fg=#e0e0e0,bg=default]"
set -g @prefix_highlight_output_suffix ""
set -g @prefix_highlight_copy_mode_attr "fg=brightcyan,bg=black,bold"

#+--------+
#+ Status +
#+--------+
set -g status-bg default
set-option -g status-style bg=default

#+--- Bars ---+
set -g status-left "#[fg=brightblack,bg=white]  #S #[fg=white,bg=default,nobold,noitalics,nounderscore]"
set -g status-right '#[fg=#1c1c1c,bg=default,nobold,noitalics,nounderscore]#[fg=#e0e0e0,bg=#1c1c1c,nobold,noitalics] #(TZ="America/Los_Angeles" date +%H:%M)  #[fg=#e0e0e0,bg=#1c1c1c,nobold,noitalics,nounderscore]#[fg=brightblack,bg=white,nobold] #H  '

#+--- Windows ---+
set -g window-status-format "#[fg=#2e3440,bg=black]#[fg=white,bg=black,nobold,noitalics,nounderscore] #I#[fg=white,bg=black,nobold,noitalics,nounderscore]: #W #[fg=black,bg=#2e3440,nobold,noitalics,nounderscore]"
set -g window-status-current-format "#[fg=#2e3440,bg=#1c1c1c]#[fg=#e0e0e0,bg=#1c1c1c,nobold,noitalics,nounderscore] #I#[fg=#e0e0e0,bg=#1c1c1c,nobold,noitalics,nounderscore]: #W #[fg=#1c1c1c,bg=#2e3440,nobold,noitalics,nounderscore]"
set -g window-status-separator ""

# Center the window list (yes, this value has to be written as "centre").
# set -g status-justify centre
set -g status-justify left

#+----------------+
#+    Windows     +
#+----------------+
#+--- Bars ---+
set -g pane-active-border-style "bg=black fg=#1c1c1c"
