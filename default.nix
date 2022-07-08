# { pkgs ? import <nixpkgs> {}, ... }:
# pkgs.callPackage ./derivation.nix {}
{nixpkgs ? <nixpkgs>}: let
  pkgs = import nixpkgs {
    overlays = [
      (import ./overlay.nix)
    ];
    pkgs.overlays = [ (import ./overlay.nix) ];
  };
in
  pkgs.dasung
