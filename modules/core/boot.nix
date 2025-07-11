{
  pkgs,
  ...
}:

{
  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  boot.loader.limine = {
    enable = true;
    efiSupport = true;
    style.wallpapers = [ pkgs.nixos-artwork.wallpapers.simple-dark-gray-bootloader.gnomeFilePath ];
  };
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
