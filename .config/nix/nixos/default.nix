{ ... }:

{
  imports = [
    ./hardware-configuration.nix # あなたのPCのパーツ構成書
    ./system.nix                # OS本体の設定
    ./nix.nix                   # Nix自体の挙動設定
    ./hyprland.nix              # Hyprlandのシステム設定を合体！
  ];
}
