{ description = "Home Manager configuration of johan";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvimNix = {
      url = "github:johsve-source/nvim-nix";
    };
    tmuxFlake = {
      url = "github:johsve-source/tmux";
    };
  };

  outputs = { self, nixpkgs, home-manager, nvimNix, tmuxFlake, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          (nvimNix.overlay or (nvimNix.overlays or {}).default)
          (tmuxFlake.overlay or (tmuxFlake.overlays or {}).default)
        ];
      };
    in
    {
      homeConfigurations."johan" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit self nvimNix tmuxFlake; };

        modules = [
          ./home.nix
          ./modules/nvim.nix
          ./modules/tmux.nix
        ];
      };
    };
}