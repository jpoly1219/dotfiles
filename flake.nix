{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  home-manager = {
    url = "github:nix-community/home-manager/master";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      mkHome = system: extraModules:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [ ./home/common.nix ] ++ extraModules;
        };
    in {
      homeConfigurations = {
        "jacob@wsl"    = mkHome "x86_64-linux"   [ ./home/linux.nix ];
        "jacob@linux"  = mkHome "x86_64-linux"   [ ./home/linux.nix ];
        "jacob@mac"    = mkHome "aarch64-darwin"  [ ./home/darwin.nix ];
      };
    };
}
