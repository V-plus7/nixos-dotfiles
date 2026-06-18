{ pkgs, lib, config, ...}: {

  options = {
    desktopEnvironment.enable = 
      lib.mkEnableOption "enables DE and WM packages";
  };

  config = lib.mkIf config.desktopEnvironment.enable {
    
    services = {
      desktopManager.plasma6.enable = true;
      xserver = {
	enable = true;
	autoRepeatDelay = 200;
	autoRepeatInterval = 35;
	windowManager.windowmaker.enable = true;
      };
    };
    # Preferred
    programs = {
      
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [

    ];
  };

}
