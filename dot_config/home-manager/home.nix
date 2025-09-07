{
  config,
  pkgs,
  ...
}:
# Huvudmodul som importerar din faktiska konfiguration i home-johan.nix.
{
  imports = [./home-johan.nix];
}
