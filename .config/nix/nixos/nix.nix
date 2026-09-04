{ pkgs, ... }:

{
  # 1. Flakes機能と新しいnixコマンドラインツールを有効化
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # 2. ライセンスが制限されているパッケージ（Unfree）のインストールを許可
  nixpkgs.config.allowUnfree = true;

  # 3. 【新設】自動ゴミ捨て（ガベージコレクション）設定
  nix.gc = {
    automatic = true;       # 自動ゴミ捨てを有効にする
    dates = "weekly";       # 毎週1回、自動で掃除を実行する（Linux標準の書き方です）
    options = "--delete-older-than 30d"; # 「30日以上前」の古い世代のデータを安全に消去する
  };

  # 4. 【オマケの超重要設定】ハードディスクの重複ファイルを自動で1つにまとめて容量を節約する設定
  nix.settings.auto-optimise-store = true;
}
