{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    package = pkgs.tmux;
    extraConfig = ''
      set -g mouse on
    '';
  };
}
