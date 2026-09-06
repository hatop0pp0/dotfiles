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

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  home.stateVersion = "26.05";
}
