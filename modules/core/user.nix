{
  pkgs,
  inputs,
  pkgs-25_05,
  ...
}:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit inputs;
      inherit pkgs-25_05;
    };
    backupFileExtension = "backup";
    users.puiyq = {
      imports = [ ../home ];
      home = {
        username = "puiyq";
        homeDirectory = "/home/puiyq";
        stateVersion = "25.05";
        shell.enableShellIntegration = true;
      };
    };
  };
  users.users.puiyq = {
    isNormalUser = true;
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "libvirtd"
      "networkmanager"
    ];
  };
  environment.pathsToLink = [ "/etc/profiles/per-user/puiyq/share/zsh" ];
}
