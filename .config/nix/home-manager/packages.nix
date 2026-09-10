{ pkgs, ... }:

{
 home.packages = with pkgs; [
   yazi
   wezterm
   waybar
   rofi
   git
   firefox
   sheldon
   bluetui
   pavucontrol
 ];
}
