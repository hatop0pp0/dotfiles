{ ... }:

{
  programs.zsh.shellAliases = {
    # 📁 ディレクトリ（フォルダ）移動を楽にするエイリアス
    ".." = "cd ..";
    "..." = "cd ../..";

    # 🎨 一覧表示（ls）を少し見やすくする
    "ll" = "ls -l";
    "la" = "ls -A";

    # ❄️ NixOSのシステム切り替え（switch）を1文字で実行できるようにする便利設定
    "nsw" = "sudo nixos-rebuild switch --flake ~/dotfiles/#popo-nixos";

    # 💡 これを足せば、毎回長い文字を打たずに「hm」だけであのかっこいいTUIが1秒で起動します！
    "hm" = "nix run github:NousResearch/hermes-agent -- --tui";
  };
}
