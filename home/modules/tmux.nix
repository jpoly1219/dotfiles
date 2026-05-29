{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
  };

  xdg.configFile."tmux" = {
    source = ../../configs/tmux;
    recursive = true;
  };
}
