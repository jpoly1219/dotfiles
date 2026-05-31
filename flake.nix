{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      # url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      mkHome =
        system: username: homeDir: extraModules:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [
            { home.username = username; home.homeDirectory = homeDir; }
            ./home/common.nix
          ] ++ extraModules;
        };
    in
    {
      homeConfigurations = {
        "jacob@wsl"   = mkHome "x86_64-linux"  "jacob" "/home/jacob"  [ ./home/linux.nix ];
        "jacob@linux" = mkHome "x86_64-linux"  "jacob" "/home/jacob"  [ ./home/linux.nix ];
        "jacob@mac"   = mkHome "aarch64-darwin" "jacob" "/Users/jacob" [ ./home/darwin.nix ];
        "jpoly@wsl"   = mkHome "x86_64-linux"  "jpoly" "/home/jpoly"  [ ./home/linux.nix ];
      };
    };
}
