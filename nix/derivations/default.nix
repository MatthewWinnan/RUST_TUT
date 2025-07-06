{
  inputs,
  system,
  ...
}: let
  # Pkgs impots
  pkgs = inputs.nixpkgs.legacyPackages.${system};
in {
  minigrep = pkgs.callPackage ./minigrep.nix {};
}
