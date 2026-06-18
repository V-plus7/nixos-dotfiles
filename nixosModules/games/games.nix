{ pkgs, lib, config, ...}: {

  options = {
    games.enable = 
      lib.mkEnableOption "enables gaming packages";
  };

  config = lib.mkIf config.games.enable {
    
    # Preferred
    programs = {
     steam.enable = true;
     gamemode.enable = true;
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [

    ];

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };

}
