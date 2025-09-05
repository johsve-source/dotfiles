{ config, lib, pkgs, inputs, ... }:

with lib;

let
  cfg = config.programs.neovim-flake;
in
{
  options.programs.neovim-flake = {
    enable = mkEnableOption "Neovim from local flake";
    
    package = mkOption {
      type = types.package;
      default = 
        if inputs ? nvim-nix && inputs.nvim-nix ? packages.${pkgs.system}.default
        then inputs.nvim-nix.packages.${pkgs.system}.default
        else pkgs.neovim;
      description = "The Neovim package to use. Prefers flake output if available.";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ cfg.package ];
    
    programs.neovim.enable = false; # Disable default neovim to avoid conflicts
  };
}