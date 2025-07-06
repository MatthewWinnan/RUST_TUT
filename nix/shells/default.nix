{
  inputs,
  system,
  ...
}: let
  # Pkgs impots
  pkgs = inputs.nixpkgs.legacyPackages.${system};
in {
  default = pkgs.callPackage ./standard.nix {};
}
