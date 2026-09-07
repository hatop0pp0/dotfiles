{ pkgs, ... }:

{
  # ブートローダー設定
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # ネットワーク設定
  networking.hostName = "popo-nixos";
  networking.networkmanager.enable = true;

  # タイムゾーンとロケール（日本語環境）
  time.timeZone = "Asia/Tokyo";
  i18n.defaultLocale = "ja_JP.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ja_JP.UTF-8";
    LC_IDENTIFICATION = "ja_JP.UTF-8";
    LC_MEASUREMENT = "ja_JP.UTF-8";
    LC_MONETARY = "ja_JP.UTF-8";
    LC_NAME = "ja_JP.UTF-8";
    LC_NUMERIC = "ja_JP.UTF-8";
    LC_PAPER = "ja_JP.UTF-8";
    LC_TELEPHONE = "ja_JP.UTF-8";
    LC_TIME = "ja_JP.UTF-8";
  };

  # Bluetoothの設定
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # フォントの設定（2026年最新仕様）
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      noto-fonts                
      noto-fonts-cjk-sans       
      noto-fonts-color-emoji    
    ];
  };

  # グラフィック・デスクトップ環境（X11 & GNOME）
  services.xserver.enable = true;

  # ログイン画面をReGreetに
  programs.regreet.enable = true;

  # キーボードレイアウト（日本語）
  services.xserver.xkb = {
    layout = "jp";
    variant = "";
  };

  # 日本語入力（Fcitx5 + Mozc）の設定
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-mozc
        fcitx5-gtk
      ];
    };
  };


  # 印刷（CUPS）サービス
  services.printing.enable = true;

  # オーディオ設定（PipeWire）
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # ユーザーアカウントの定義
  users.users."popo" = {
    isNormalUser = true;
    description = "popo";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ ];
  };

  # システム全体（ルート）にインストールするパッケージ
  environment.systemPackages = with pkgs; [
  ];

  # システム状態バージョンの固定（初期インストール時のものを維持）
  system.stateVersion = "26.05";
}
