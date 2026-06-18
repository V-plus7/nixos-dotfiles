{ pkgs, lib, config, ...}: {

  options = {
    browsers.enable = 
      lib.mkEnableOption "enables browsers packages";
  };

  config = lib.mkIf config.browsers.enable {
    
    # Preferred
    programs = {
     firefox.enable = true;
     ladybird.enable = true; 
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [

    ];
  };

}
