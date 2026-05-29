{ pkgs, ... }:

let
  tmux-themepack = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-themepack";
    version = "unstable-2019-12-22";  # doesn't affect the build
    src = pkgs.fetchFromGitHub {
      owner = "jimeh";
      repo = "tmux-themepack";
      rev = "7c59902f64dcd7ea356e891274b21144d1ea5948";  # latest master commit hash
      hash = "sha256-c5EGBrKcrqHWTKpCEhxYfxPeERFrbTuDfcQhsUAbic4=";  # if left empty, Nix will error with the correct hash
    };
  };
in
{
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      tmux-themepack
      resurrect
      continuum
    ];
    extraConfig = builtins.readFile ../../configs/tmux/tmux.conf;
  };
}

# { pkgs, ... }: {
#   home.packages = with pkgs; [
#     tmux
#   ];
# }
