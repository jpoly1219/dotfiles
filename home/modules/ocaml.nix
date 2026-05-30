{ pkgs, ... }:
{
  home.packages = with pkgs; [ opam ];

  programs.bash.bashrcExtra = ''
    [[ ! -r /home/jacob/.opam/opam-init/init.sh ]] || . /home/jacob/.opam/opam-init/init.sh > /dev/null 2>&1
  '';
}
