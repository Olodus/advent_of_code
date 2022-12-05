{
  description = "A Solution to Advent of Code 2022 Day4 in BQN";

  inputs = {
    nixpkgs.url = "nixpkgs"; # Resolves to github:NixOS/nixpkgs
    # Helpers for system-specific outputs
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    # Create system-specific outputs for the standard Nix systems
    # https://github.com/numtide/flake-utils/blob/master/default.nix#L3-L9
    flake-utils.lib.eachDefaultSystem (system:
      let
	pkgs = import nixpkgs { inherit system; };
      in
      {
        # A simple executable package
	packages.default = pkgs.writeScriptBin "solution" ''
	  BQN -f main.bqn ../input.txt
        '';

        # An app that uses the `runme` package
        apps.default = {
          type = "app";
          program = "${self.packages.${system}.solution}/bin/solution";
        };
        apps = rec {
          default = runme;

          solution = {
            type = "app";
            program = "${self.packages.${system}.runme}/bin/runme";
          };

          benchmark = {
            type = "app";
            program = "${self.packages.${system}.runme-lint}/bin/runme-lint";
          };

          test = {
            type = "app";
            program = "${self.packages.${system}.runme-lint}/bin/runme-lint";
          };

          verify = {
            type = "app";
            program = "${self.packages.${system}.runme-lint}/bin/runme-lint";
          };
        };
      });
}
