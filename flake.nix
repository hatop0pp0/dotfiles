{
  description = "A simple NixOS flake with sops-nix";

  inputs = {
    # NixOS official package source
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    
    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # 【ここを追加！】sops-nixのプログラムをインターネットからダウンロードする設定
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # 【outputsの引数に入力を追加】
  outputs = inputs@{ nixpkgs, home-manager, sops-nix, ... }: {
    nixosConfigurations = {
      popo-nixos = nixpkgs.lib.nixosSystem {
        # 【specialArgsを追加】システム全体でsops-nixのパーツを使えるように仕込む
        specialArgs = { inherit inputs; };
        modules = [
          ./.config/nix/nixos

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            # Home Managerの全ユーザー環境で sops-nix の機能を使えるように共有登録します
            home-manager.sharedModules = [
              sops-nix.homeManagerModules.sops
            ];
            
            # 【extraSpecialArgsを追加】home-manager側でもsops-nixのパーツを使えるように仕込む
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.popo = import ./.config/nix/home-manager;
          }
        ];
      };
    };
  };
}
