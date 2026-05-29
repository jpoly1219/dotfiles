{ pkgs, ... }: {
  imports = [
    ./modules/neovim.nix
    ./modules/tmux.nix
    ./modules/ocaml.nix
    ./modules/python.nix
    ./modules/jvm.nix
  ];

  home.username = "jacob";
  home.homeDirectory = "/home/jacob";
  home.stateVersion = "24.05";
  # home.enableNixpkgsReleaseCheck = false;

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    ripgrep
    fd
    curl
    git
  ];
}
