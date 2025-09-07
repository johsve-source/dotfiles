{pkgs, ...}: {
  home.stateVersion = "23.05";
  home.username = "johan";
  home.homeDirectory = "/home/johan";

  programs.bash.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "/usr/bin/bash";
  };

  imports = [
    ./modules/tmux.nix
    ./modules/nvim.nix
  ];

  home.packages = with pkgs; [];
}
