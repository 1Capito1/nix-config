let
  pkgs = import <nixpkgs> {};
in
  (import ./home.nix) {
    config = {};
    pkgs = pkgs;
    lib = pkgs.lib;
  }
