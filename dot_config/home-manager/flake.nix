{
  description = "Home Manager configuration of johan";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # Local flakes
    nvim-nix = {
      url = "path:../../workspace/github.com/johsve-source/nvim-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tmux = {
      url = "path:../../workspace/github.com/johsve-source/tmux";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, nvim-nix, tmux, ... } @ inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."johan" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ 
          ./home.nix 
          ./modules/nvim.nix
          ./modules/tmux.nix
        ];

        # Pass inputs to modules
        extraSpecialArgs = { inherit inputs; };
      };
    };
}
