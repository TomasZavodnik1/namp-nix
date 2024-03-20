with import <nixpkgs> {};

with pkgs;
stdenv.mkDerivation {
  name = "namp";
  version = "0.0.1";
  src = ./.;

  buildInputs = [ ];
  nativeBuildInputs = [ glib pkg-config ncurses mpg123 libao alsa-lib taglib curl help2man libtool   ];

  buildPhase = ''./configure
                make -s'';


  installPhase = ''
    cp src/namp $out/bin/namp
  '';
}
