{ pkgs, ... }: {
  home.packages = with pkgs; [
    jdk21
    coursier
    gradle
  ];

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}";
  };
}
