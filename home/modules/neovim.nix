{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # home.file.".config/nvim".source = ../../configs/nvim;
  xdg.configFile."nvim" = {
    source = ../../configs/nvim;
    recursive = true;
  };
}

# { pkgs, ... }: {
#   home.packages = with pkgs; [
#     neovim
#   ];
#
#   home.sessionVariables = {
#     EDITOR = "nvim";
#   };
# }
