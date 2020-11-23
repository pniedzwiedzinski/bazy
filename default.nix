let
  pkgs = import <nixpkgs> {};
  mcli = pkgs.writeScriptBin "mcli" ''
    #!${pkgs.stdenv.shell}
    mycli -u pn -p password
  '';
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.mycli
      pkgs.mysql
      mcli
    ];
    shellHook = ''
      export LESS="-SRXF"
      docker-compose up -d
    '';
  }
