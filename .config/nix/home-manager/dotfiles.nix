{ config, ... }:

let
  # あなたの現在のリポジトリの位置（ホームディレクトリからの相対パス）を指定します
  dotfilesPath = "${config.home.homeDirectory}/dotfiles";

  # 見本（mozumasuさん）と同じように、リンク作成を短く書くための便利関数（マクロ）です
  mkLink = path: config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/${path}";
in
{
  # ❄️ ここで「手元の生ファイル」と「~/.config/」の中身をダイレクトに繋ぎます
  xdg.configFile = {
    "yazi".source = mkLink ".config/yazi";
    "wezterm".source = mkLink ".config/wezterm";
    "waybar".source = mkLink ".config/waybar";
    "rofi".source = mkLink ".config/rofi";
    "hypr".source = mkLink ".config/hypr";
    "git".source = mkLink ".config/git";
    "sheldon".source = mkLink ".config/sheldon";
  };
}
