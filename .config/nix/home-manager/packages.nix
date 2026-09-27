{ pkgs, ... }:

{
 home.packages = with pkgs; [
   starship
   yazi
   ghostty
   herdr
   antigravity-cli
   waybar
   rofi
   git
   brave
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
