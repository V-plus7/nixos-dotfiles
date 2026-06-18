{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
     ./hardware-configuration.nix
     ./../../nixosModules/default.nix
    ];

  networking.hostName = "nixos-vt";
  networking.networkmanager.enable = true;

  users.users.bryan= {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" ];
     packages = with pkgs; [
       tree
     ];
   };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05"; 

}

