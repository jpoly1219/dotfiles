{ ... }:
{
  home.sessionVariables = {
    DAIKONDIR = "/home/jacob/bin/daikon-5.8.24";
  };

  programs.bash.bashrcExtra = ''
    [ -n "$DAIKONDIR" ] && [ -f "$DAIKONDIR/scripts/daikon.bashrc" ] && source "$DAIKONDIR/scripts/daikon.bashrc"
  '';
}
