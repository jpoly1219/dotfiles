{ pkgs, ... }: {
  imports = [
    ./modules/neovim.nix
    ./modules/tmux.nix
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
