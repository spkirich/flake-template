{
  description = "A simple flake";

  inputs = {
    flake-utils = {
      url = github:numtide/flake-utils;
    };
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

      in
      {
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
