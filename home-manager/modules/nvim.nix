{ config, pkgs, lib, ... }:

let
  cfg = ../configs/nvim;
in
{
  programs.neovim = {
    enable = true;
    # Use the neovim package from pkgs (overlays from nvim-nix applied in flake.nix)
    package = pkgs.neovim;
    viAlias = true;
    enableLua = true;
  };

  # Symlink ~/.config/nvim -> home-manager/configs/nvim in this repo. If you prefer
  # to reference the nvim-nix flake's config directly, we can adjust later.
  home.file.".config/nvim".source = cfg;
}