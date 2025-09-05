{ config, pkgs, lib, ... }:

let
  cfg = ../configs/nvim;
  system = pkgs.system;
  nvimFlakePkgs = (extraSpecialArgs or {}).nvimNix ? (extraSpecialArgs.nvimNix.packages or null) : null;
  nvimFromFlake = if nvimFlakePkgs != null && builtins.hasAttr system nvimFlakePkgs
    then (nvimFlakePkgs.${system}.neovim or null)
    else null;
in
{
  programs.neovim = {
    enable = true;
    package = if nvimFromFlake != null then nvimFromFlake else pkgs.neovim;
    viAlias = true;
    enableLua = true;
  };

  home.file.".config/nvim".source = cfg;
}