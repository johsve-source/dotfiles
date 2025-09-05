{ config, lib, pkgs, inputs, ... }:

with lib;

let
  cfg = config.programs.tmux-flake;
in
{
  options.programs.tmux-flake = {
    enable = mkEnableOption "Tmux from local flake";
    
    package = mkOption {
      type = types.package;
      default = 
        if inputs ? tmux && inputs.tmux ? packages.${pkgs.system}.default
        then inputs.tmux.packages.${pkgs.system}.default
        else pkgs.tmux;
      description = "The Tmux package to use. Prefers flake output if available.";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ cfg.package ];
    
    programs.tmux.enable = false; # Disable default tmux to avoid conflicts
  };
}