{ pkgs, ... }:

{
 home.packages = with pkgs; [
   yazi
   ghostty
   waybar
   rofi
   git
   brave
   google-chrome
   sheldon
   bluetui
   pavucontrol
   satty
   grim
   wl-clipboard
 ];
}
