{ pkgs, ... }: {
  home.username = "jacob";
  home.homeDirectory = "/home/jacob";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    ripgrep
    fd
    curl
    git
  ];
}
