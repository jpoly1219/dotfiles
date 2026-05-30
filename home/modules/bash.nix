{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    profileExtra = ''
      if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then
        . $HOME/.nix-profile/etc/profile.d/nix.sh
      fi
    '';
    bashrcExtra = ''
      [ -f "/home/jacob/.ghcup/env" ] && . "/home/jacob/.ghcup/env"
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      gcloud.disabled = true;
    };
  };

  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
