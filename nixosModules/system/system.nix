{ pkgs, lib, config, ...}: {

  options = {
    system.enable = 
      lib.mkEnableOption "enables system packages";
  };

  config = lib.mkIf config.system.enable {
    
    # Preferred
    programs = {
      foot.enable = true;
      git.enable = true;
    };

    # If not available as programs
    environment.systemPackages = with pkgs; [
      wget
    ];

    time.timeZone = "America/Los_Angeles";

    i18n.defaultLocale = "en_US.UTF-8";
    i18n.extraLocales = ["ja_JP.UTF-8/UTF-8"];
  };

}
