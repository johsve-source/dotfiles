# By knightfall01 on Github as a part of https://github.com/Knightfall01/Hyprland-config.

if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting ""
starship init fish | source

if type -q fnm
    fnm env --use-on-cd | source
end

fnm completions --shell=fish > ~/.config/fish/completions/fnm.fish

set -gx PATH $HOME/.cargo/bin $PATH

# fish_add_path ~/.bin/
# fish_add_path ~/.config/emacs/bin/
# fish_add_path ~/.local/bin/

alias l="ls -lh"
alias ls="exa -la"
alias nivm="nvim"
alias open="xdg-open"
alias findme="grep -nr"
alias nano="nvim"
