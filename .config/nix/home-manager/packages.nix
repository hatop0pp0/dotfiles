{ pkgs, ... }:

{
 home.packages = with pkgs; [
   yazi
   wezterm
   waybar
   rofi
 ];
}
