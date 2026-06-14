{ configs, pkgs, ... }:


{
    home.username = "bryan";
    home.homeDirectory = "/home/bryan";
    programs.git.enable = true;
    home.stateVersion = "26.05";

}
