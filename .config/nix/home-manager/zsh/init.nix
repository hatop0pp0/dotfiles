{ ... }:

{
  programs.zsh = {
    # 手元の生設定ファイル（rc）を自動で読み込ませる仕掛けです
    initExtra = ''
      if [ -f "$HOME/.config/zsh/rc" ]; then
        source "$HOME/.config/zsh/rc"
      fi
    '';
  };
}
