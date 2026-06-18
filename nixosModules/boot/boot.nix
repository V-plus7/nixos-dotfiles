{ pkgs, lib, config, ...}: {

  options = {
    boot.enable = 
      lib.mkEnableOption "enables boot options";
  };

  config = lib.mkIf config.boot.enable {
    boot.loader.limine.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.extraModprobeConfig = "optionsiwlwifi 11n_disable=1"; 

    boot.kernelPackages = pkgs.linuxPackages_latest;
  };

}
