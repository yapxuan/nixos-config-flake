{ pkgs, ... }:

{

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [

    # social
    zapzap
    discord

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    fzf # A command-line fuzzy finder
    fastfetch
    fd
    eza
    bat
    bat-extras.batman
    du-dust
    gearlever
    cloudflared

    # misc
    file
    which
    gnused
    gnutar
    gawk
    zstd
    gnupg
    qbittorrent
    tealdeer
    zellij

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor
    nixfmt-rfc-style
    nil # nix language server
    nixd
    cachix

    # system tools
    lm_sensors # for `sensors` command
    pciutils # lspci
    usbutils # lsusb

    # git-related
    gitui
    lazygit

    # entertainment
    kazumi
    heroic
    animeko
  ];
}
