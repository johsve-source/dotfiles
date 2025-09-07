# =============================
# BASIC SETTINGS
# =============================
set -g default-shell /bin/bash
set -g default-command /bin/bash
set -g escape-time 0
set -g history-limit 2000
setw -g aggressive-resize on
set -g base-index 1
setw -g pane-base-index 1
set -g mouse on

# =============================
# MOUSE MENUS
# =============================
# Pane menu
bind-key -n MouseDown3Pane \
  display-menu -T "#[align=centre]Pane" \
  "Split Horizontal" h "split-window -h -t=#{pane_id}" \
  "Split Vertical" v "split-window -v -t=#{pane_id}" \
  "Kill Pane" x "kill-pane -t=#{pane_id}" \
  "" \
  "Next Pane" n "select-pane -t=#{pane_id}:.+"

# Window menu
bind-key -n MouseDown3StatusRight \
  display-menu -T "#[align=centre]Window" \
  "New Window" n new-window \
  "Rename Window" r "command-prompt -I '#W' 'rename-window %%'" \
  "Kill Window" k "kill-window -t=#{window_id}" \
  "" \
  "Split Horizontal" s "split-window -h -t=#{window_id}" \
  "Split Vertical" v "split-window -v -t=#{window_id}" \
  "Next Window" l "select-window -t=#{window_id}:+" \
  "Previous Window" h "select-window -t=#{window_id}:-"

# Session menu
bind-key -n MouseDown3Status \
  display-menu -T "#[align=centre]Session" \
  "New Session" n new-session \
  "Switch Session (fzf)" s "tmux attach-session -t \$(tmux list-sessions -F '#{session_name}' | fzf --prompt='Select session: ')" \
  "Rename Session" r "command-prompt -I '#S' 'rename-session %%'" \
  "Kill Session" k "kill-session -t=#{session_name}" \
  "" \
  "Detach" d detach-client

# =============================
# PREFIX KEY
# =============================
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# =============================
# PANE NAVIGATION
# =============================
# WASD gaming-style
bind w select-pane -U
bind a select-pane -L
bind s select-pane -D
bind d select-pane -R

# Vim-style
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# =============================
# PANE CREATION
# =============================
unbind '"' # Remove default horizontal split
unbind '%' # Remove default vertical split
bind f split-window -h
bind v split-window -v
bind q kill-pane

# =============================
# PANE RESIZING
# =============================
bind -r Left resize-pane -L 5
bind -r Down resize-pane -D 5
bind -r Up resize-pane -U 5
bind -r Right resize-pane -R 5

bind W resize-pane -U 5
bind A resize-pane -L 5
bind S resize-pane -D 5
bind D resize-pane -R 5

# =============================
# WINDOW MANAGEMENT
# =============================
bind t new-window
bind r command-prompt "rename-window %%"
bind x kill-window

# =============================
# QUICK ACTIONS
# =============================
bind z resize-pane -Z
bind e detach-client
bind c clear-history
unbind C-l
bind -n C-l send-keys C-l

# =============================
# CONFIG RELOAD
# =============================
bind R source-file "~/.config/tmux/packages/tmux/config/general.tmux" \; display "Config reloaded!"
