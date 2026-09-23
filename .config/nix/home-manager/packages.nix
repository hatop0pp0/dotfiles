{ pkgs, ... }:

{
 home.packages = with pkgs; [
   yazi
   ghostty
   herdr
   antigravity-cli
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
