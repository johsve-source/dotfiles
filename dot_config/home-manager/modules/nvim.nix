{pkgs, ...}: let
  nvimConfig = ./../nvim-nix/init.lua; # relativ path från modules/
in {
  programs.neovim = {
    enable = true;
    package = pkgs.neovim;
    extraConfig = builtins.readFile nvimConfig;
  };
}
