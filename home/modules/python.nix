{ pkgs, ... }: {
  home.packages = with pkgs; [
    # (lib.lowPrio python311)
    # (lib.lowPrio python312)
    python312 # match system python version
    uv
  ];
}
