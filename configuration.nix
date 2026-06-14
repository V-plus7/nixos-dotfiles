{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
     /etc/nixos/hardware-configuration.nix
    ];

  boot.loader.limine.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos-vt";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Los_Angeles";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocales = ["ja_JP.UTF-8/UTF-8"];
 
  services.displayManager.ly.enable = true;
  
  services.desktopManager.plasma6.enable = true;
  services.xserver = {
	enable = true;
	autoRepeatDelay = 200;
	autoRepeatInterval = 35;
	windowManager.windowmaker.enable = true;
  };
  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;

  users.users.bryan= {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" ];
     packages = with pkgs; [
       tree
     ];
   };

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    foot
    kitty
    xrandr
  ];
  
  fonts.packages = with pkgs; [
	nerd-fonts.jetbrains-mono
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  services.openssh.enable = true;

  system.stateVersion = "26.05"; 

}

