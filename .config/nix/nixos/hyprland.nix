{ ... }:

{
  # NixOSシステム全体でHyprlandを有効化
  programs.hyprland = {
    enable = true;
    xwayland.enable = true; # 従来のアプリも綺麗に映るようにする魔法のスイッチ
  };
}
