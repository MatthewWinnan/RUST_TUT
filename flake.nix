{
  description = "Flake for the example projects written in The RUST Book";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    # Nix Formatter
    alejandra = {
      url = "github:kamadorueda/alejandra/3.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    # Modular import to allow for all systems
    forAllSystemsInputs = function: nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (system: function inputs system);
  in {
    # Formatter of choice
    formatter = forAllSystemsInputs (inputs: system: inputs.alejandra.defaultPackage.${system});

    # Build packages
    packages = forAllSystemsInputs (inputs: system: import ./nix/derivations {inherit system inputs;});

    # My own local devshells
    devShells = forAllSystemsInputs (inputs: system: import ./nix/shells {inherit system inputs;});
  };
}
