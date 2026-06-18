{ pkgs, lib, ...}: {

  imports = [
    ./boot/boot.nix
    ./system/system.nix
    ./utility/utility.nix
    ./services/services.nix
    ./browsers/browsers.nix
    ./desktopEnvironment/desktopEnvironment.nix
    ./multimedia/multimedia.nix
    ./games/games.nix
    ./fonts/fonts.nix
  ];
  
  boot.enable = lib.mkDefault true;
  system.enable = lib.mkDefault true;
  utility.enable = lib.mkDefault true;
  services.enable = lib.mkDefault true;
  browsers.enable = lib.mkDefault true;
  desktopEnvironment.enable = lib.mkDefault true;
  multimedia.enable = lib.mkDefault true;
  fonts.enable = lib.mkDefault true;
}
