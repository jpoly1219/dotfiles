{ pkgs, ... }:
{
  imports = [
    ./modules/neovim.nix
    ./modules/tmux.nix
    ./modules/ocaml.nix
    ./modules/python.nix
    ./modules/jvm.nix
    ./modules/bash.nix
    ./modules/rust.nix
    ./modules/go.nix
    ./modules/lean.nix
    ./modules/daikon.nix
    ./modules/julia.nix
    ./modules/javascript.nix
  ];

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    ripgrep
    fd
    curl
    git
  ];

  home.sessionPath = [
    "$HOME/.local/share/coursier/bin"
  ];
}
