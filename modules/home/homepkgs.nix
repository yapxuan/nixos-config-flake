{
  pkgs,
  pkgs-25_05,
  inputs,
  ...
}:

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
    jq
    gearlever
    cloudflared
    termius

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
    curlie
    vscode-langservers-extracted
    bash-language-server

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor
    nixfmt-rfc-style
    nil # nix language server
    nixd
    nvd
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
    (pkgs-25_05.animeko)
  ];
}
