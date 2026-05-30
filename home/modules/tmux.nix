{ pkgs, ... }:

let
  tmux-themepack = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-themepack";
    version = "unstable-2019-12-22";
    rtpFilePath = "themepack.tmux";
    src = pkgs.fetchFromGitHub {
      owner = "jimeh";
      repo = "tmux-themepack";
      rev = "7c59902f64dcd7ea356e891274b21144d1ea5948";
      hash = "sha256-c5EGBrKcrqHWTKpCEhxYfxPeERFrbTuDfcQhsUAbic4=";
    };
  };
in
{
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      {
        plugin = tmux-themepack;
        extraConfig = ''
          set -g @themepack "basic"
        '';
      }
      {
        plugin = resurrect;
        extraConfig = ''
          set -g @resurrect-dir "$HOME/.local/share/tmux/resurrect"
          set -g @resurrect-capture-pane-contents "on"
        '';
      }
      {
        plugin = continuum;
        extraConfig = ''
          set -g @continuum-restore "on"
        '';
      }
    ];
    extraConfig = builtins.readFile ../../configs/tmux/tmux.conf;
  };
}

# { pkgs, ... }: {
#   home.packages = with pkgs; [
#     tmux
#   ];
# }
