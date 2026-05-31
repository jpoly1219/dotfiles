{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [ julia ];

  home.activation.juliaLSP = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${pkgs.julia}/bin/julia --startup-file=no -e '
      import Pkg
      Pkg.activate(; temp=false)
      if !haskey(Pkg.project().dependencies, "LanguageServer")
        Pkg.add(["LanguageServer", "SymbolServer"])
      end
    '
  '';
}
