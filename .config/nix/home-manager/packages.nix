{ pkgs, ... }:

{
 home.packages = with pkgs; [
   quickshell
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
   hyprpaper
 ];
}
