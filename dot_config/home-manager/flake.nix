{
  description = "Home Manager configuration for johan";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.05";
    home-manager.url = "github:nix-community/home-manager/release-23.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    homeConfigurations = {
      johan = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [./home-johan.nix];
      };
    };
  };
}
