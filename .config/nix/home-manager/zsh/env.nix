{ ... }:

{
  programs.zsh.sessionVariables = {
    # 📝 標準のエディタを「nano」に指定します（お好みに合わせて後でnvim等に変えられます）
    EDITOR = "nano";

    # 🗂️ キャッシュや設定ファイルの置き場所（XDG基本規格に合わせる綺麗なお作法です）
    ZSH_CACHE_DIR = "$XDG_CACHE_HOME/zsh";
  };
}
