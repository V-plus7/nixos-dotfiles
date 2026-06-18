{ pkgs, lib, config, ...}: {

  options = {
    services.enable = 
      lib.mkEnableOption "enables services";
  };

  config = lib.mkIf config.services.enable {
    services = {
      displayManager.ly.enable = true;
      printing.enable = true;
      libinput.enable = true;
      openssh.enable = true;
      pipewire = {
	enable = true;
	pulse.enable = true;
      };
    };  
  };

}
