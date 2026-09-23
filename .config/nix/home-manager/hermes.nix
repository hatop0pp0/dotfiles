# ==============================================================================
# Hermes Agent - 宣言的永続化モジュール
# ==============================================================================
{ pkgs, inputs, ... }:

{
  # 💡 1. 道具箱へ、flake.nixで固定した特定のバージョンをダイレクトにインストール
  home.packages = [
    inputs.hermes-agent.packages.${pkgs.system}.default
  ];

  # 💡 2. エイリアス（2文字のhmショートカット）も、このファイル内で一緒に管理！
  programs.zsh.shellAliases = {
    "hm" = "hermes --tui";
  };

  home.sessionVariables = {
    TAVILY_API_KEY = "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";
    OPENAI_API_KEY = "dummy-key";
  };
}
