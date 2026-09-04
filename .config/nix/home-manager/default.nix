{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./sops.nix
    ./dotfiles.nix

    # ./hyprland.nix 
    # ./wezterm.nix
    # ./waybar.nix
    # ./rofi.nix
  ];

  home.username = "popo";
  home.homeDirectory = "/home/popo";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "hatopoppo";
        email = "277675439+hatop0pp0@users.noreply.github.com";
      }; 
    };
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  home.stateVersion = "26.05";
}
