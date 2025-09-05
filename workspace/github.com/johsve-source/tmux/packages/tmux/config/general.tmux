#!/usr/bin/env bash
# ~/.config/tmux/tmux.conf
# Clean and organized tmux configuration

#===============================================================================
# BASIC SETTINGS
#===============================================================================

# Shell configuration
set -g default-shell /bin/bash
set -g default-command /bin/bash

# Performance and timing
set -g escape-time 0         # No delay after escape key
set -g history-limit 2000    # Scrollback buffer size
setw -g aggressive-resize on # Smart window resizing

# Display settings
set -g base-index 1         # Start window numbering at 1
setw -g pane-base-index 1   # Start pane numbering at 1
setw -g clock-mode-style 24 # 24-hour clock format

# Terminal compatibility
set-option -ga terminal-overrides ",xterm-256color:Tc" # True color support

# Status bar lengths
set-option -g status-left-length 100
set-option -g status-right-length 100

#===============================================================================
# KEY BINDINGS (Nordic ISO Layout Optimized)
#===============================================================================

# Prefix key: C-a (instead of default C-b)
set -g prefix C-a
unbind C-b
bind C-a send-prefix

#--- WASD Navigation (Gaming-style for Nordic layout) ---
bind w select-pane -U # Up pane (W)
bind a select-pane -L # Left pane (A)
bind s select-pane -D # Down pane (S)
bind d select-pane -R # Right pane (D)

#--- Vim-style Navigation (Alternative) ---
bind h select-pane -L # Left pane (H)
bind j select-pane -D # Down pane (J)
bind k select-pane -U # Up pane (K)
bind l select-pane -R # Right pane (L)

#--- Pane Creation ---
unbind '"'             # Remove default horizontal split
unbind '%'             # Remove default vertical split
bind f split-window -h # Horizontal split (F)
bind v split-window -v # Vertical split (V)
bind q kill-pane       # Kill pane (Q)

#--- Pane Resizing (WASD + Shift) ---
bind -r Left resize-pane -L 5  # Resize left (Arrow keys)
bind -r Down resize-pane -D 5  # Resize down
bind -r Up resize-pane -U 5    # Resize up
bind -r Right resize-pane -R 5 # Resize right

bind W resize-pane -U 5 # Resize up (Shift+W)
bind A resize-pane -L 5 # Resize left (Shift+A)
bind S resize-pane -D 5 # Resize down (Shift+S)
bind D resize-pane -R 5 # Resize right (Shift+D)

#--- Window Management ---
bind t new-window                        # New window (T for Tab)
bind r command-prompt "rename-window %%" # Rename window (R)
bind x kill-window                       # Kill window (X)

#--- Quick Actions ---
bind z resize-pane -Z # Toggle zoom (Z)
bind e detach-client  # Detach (E for Exit)
bind c clear-history  # Clear history (C)

#--- System Integration ---
unbind C-l                # Remove conflicting bind
bind -n C-l send-keys C-l # Pass through C-l (clear screen)

#--- Configuration ---
bind R source-file "~/.config/tmux/tmux.conf" \; display "Config reloaded!" # Reload (Shift+R)

#===============================================================================
# NORDIC ISO KEYBOARD OPTIMIZED KEY BINDINGS
#===============================================================================
#
# PREFIX COMMANDS (C-a + key):
#   PANE NAVIGATION:
#     w, a, s, d    - Navigate panes (WASD gaming-style)
#     h, j, k, l    - Navigate panes (vim-style, still available)
#
#   PANE MANAGEMENT:
#     f             - Split window horizontally
#     v             - Split window vertically
#     q             - Kill current pane
#     z             - Toggle pane zoom
#
#   PANE RESIZING:
#     W, A, S, D    - Resize panes (Shift+WASD)
#     ←, ↓, ↑, →    - Resize panes (arrow keys)
#
#   WINDOW MANAGEMENT:
#     t             - New window (Tab)
#     r             - Rename window
#     x             - Kill window
#
#   SYSTEM:
#     e             - Detach client (Exit)
#     c             - Clear history
#     R             - Reload configuration (Shift+R)
#     C-a           - Send literal C-a to terminal
#
# DIRECT COMMANDS (no prefix):
#     C-l           - Clear screen (pass-through)
#
# DESIGN RATIONALE:
# - WASD for navigation (familiar for gamers, easy to reach)
# - Single letters for common actions (f, v, q, t, r, x, e, c, z)
# - Shift+WASD for resizing (logical extension)
# - All keys close to Ctrl+A on Nordic layout
# - No Alt combinations (can conflict with terminal/OS)
#
#===============================================================================
