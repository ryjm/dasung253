self: super: rec {
  python3 = super.python3.override {
    packageOverrides = self: super: {
      dasung = super.callPackage ./derivation.nix {};
    };
  };
  pythonPackages = python3.pkgs;
  dasung = super.callPackage ./derivation.nix {};
}
