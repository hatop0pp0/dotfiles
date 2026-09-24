# ==============================================================================
# Hermes Agent - 宣言的永続化モジュール
# ==============================================================================
{ pkgs, inputs, ... }:

{
  home.packages = [
    inputs.hermes-agent.packages.${pkgs.system}.default
  ];

  programs.zsh.shellAliases = {
    "hm" = "hermes --tui";
  };

  home.sessionVariables = {
    GEMINI_API_KEY = "";
    GOOGLE_API_KEY = "";
  };
}
