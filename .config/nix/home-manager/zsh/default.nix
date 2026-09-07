{ config, pkgs, ... }:

{
  imports = [
    ./aliases.nix
    ./env.nix
    ./init.nix
  ];

  programs.zsh = {
    enable = true;

    history = {
      size = 100000;          # メモリに保存する履歴の数
      save = 100000;          # ファイルに保存する履歴の数
      path = "${config.xdg.dataHome}/zsh/history"; # 履歴の保存先
      ignoreDups = true;      # 重複したコマンドは記録しない
      share = true;           # 別のターミナル間で履歴をリアルタイム共有する
    };
  };
}
