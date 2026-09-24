{ pkgs, inputs, config, ... }:

{
  home.packages = [
    inputs.hermes-agent.packages.${pkgs.system}.default
  ];

  programs.zsh.shellAliases = {
    "hm" = "hermes --tui";
  };

  # 🔒 Zshが起動するときに、sopsの暗号解読ファイルを直接読み込ませる正しい設定
  programs.zsh.initExtra = ''
    if [ -f "${config.sops.secrets.gemini-api-key.path}" ]; then
      export GEMINI_API_KEY=$(cat "${config.sops.secrets.gemini-api-key.path}")
      export GOOGLE_API_KEY=$GEMINI_API_KEY
    fi
  '';
}
