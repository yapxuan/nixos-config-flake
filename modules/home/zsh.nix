{ ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
        "regexp"
        "root"
        "line"
      ];
    };
    initContent = ''
      fastfetch
      export NH_NO_CHECKS=1;

      bindkey "^[[3~" delete-char
      bindkey "^[[1;5C" forward-word
      bindkey "^[[1;5D" backward-word

      # alias certain nix subcommand to nom
      nix() {
        case "$1" in
          shell|develop|build)
            nom "$@"
            ;;
          *)
            command nix "$@"
            ;;
        esac
      }
    '';

    shellAliases = {
      "nix-shell" = "nom-shell";
      "nix-build" = "nom-build";
      cat = "bat";
      man = "batman";
      find = "fd";
      ls = "eza";
      du = "dust";
      cd = "z";
      grep = "rg";
      tree = "eza -T";
    };
  };
}
