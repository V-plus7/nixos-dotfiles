{ pkgs, lib, config, ...}: {

  options = {
    utility.enable = 
      lib.mkEnableOption "enables utility packages";
  };

  config = lib.mkIf config.utility.enable {
    
    # Preferred
    programs = {
     vim.enable = true;
     neovim.enable = true; 
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [

    ];
  };

}
