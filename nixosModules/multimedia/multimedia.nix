{ pkgs, lib, config, ...}: {

  options = {
    multimedia.enable = 
      lib.mkEnableOption "enables multimedia players";
  };

  config = lib.mkIf config.multimedia.enable {
    
    # Preferred
    programs = {
      
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [
      mpv
      audacity
      qimgv
    ];
  };

}
