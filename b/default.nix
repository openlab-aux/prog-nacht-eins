let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  deps = [ stdenv.cc.cc pkgs.glibc ];
in rec {
  cs2dEnv = stdenv.mkDerivation rec {
    name = "ybc-env";
    version = "0.1";
    src = ./.;
    buildInputs = deps;
    LD_LIBRARY_PATH = stdenv.lib.makeLibraryPath ( deps );
    LIBRARY_PATH = stdenv.lib.makeLibraryPath ( deps );
  };
}
