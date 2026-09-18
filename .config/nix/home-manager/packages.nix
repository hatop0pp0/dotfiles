{ pkgs, ... }:

{
 home.packages = with pkgs; [
   yazi
   wezterm
   waybar
   rofi
   git
   firefox
   google-chrome
   sheldon
   bluetui
   pavucontrol
   satty
   grim
   wl-clipboard
 ];
}
