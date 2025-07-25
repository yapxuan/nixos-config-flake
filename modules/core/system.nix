{ ... }:

{
  nix = {
    settings = {
      substituters = [
        "https://cache.nixos.org/"
        "https://yapxuan.cachix.org"
        "https://nix-community.cachix.org"
        "https://watersucks.cachix.org"
      ];
      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "yapxuan.cachix.org-1:patwx9r3ULo9bqp+70S01APEvpw2z20la9t/okouaRg="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "watersucks.cachix.org-1:6gadPC5R8iLWQ3EUtfu3GFrVY7X6I4Fwz/ihW25Jbv8="
      ];
      trusted-users = [
        "root"
        "@wheel"
      ];
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };
  system.stateVersion = "25.05";
}
