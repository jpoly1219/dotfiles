{ pkgs, ... }:
{
  home.packages = with pkgs; [ elan ];

  home.sessionPath = [ "$HOME/.elan/bin" ];
}
