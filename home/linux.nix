{ pkgs, ... }:
{
  home.sessionVariables = {
    BROWSER = "powershell.exe /c start vivaldi.exe";
    GDK_DPI_SCALE = "1.0";
  };
}
