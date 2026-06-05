{ pkgs, ... }:
{
  home.packages = with pkgs.elmPackages; [
    elm
  ];
}
