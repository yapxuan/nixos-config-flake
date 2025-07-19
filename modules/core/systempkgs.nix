{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.nixVersions.git;
  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    just
    vlc
    mesa
  ];
}
