{ ... }:

{

  programs.git = {
    enable = true;
    userName = "yapxuan";
    userEmail = "puiyongqing@gmail.com";
    extraConfig = {
      credential.helper = "store";
      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };
}
