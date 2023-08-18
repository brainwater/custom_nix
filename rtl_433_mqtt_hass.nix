{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/4fe8d07066f6ea82cda2b0c9ae7aee59b2d241b3.tar.gz";
    sha256 = "sha256:06jzngg5jm1f81sc4xfskvvgjy5bblz51xpl788mnps1wrkykfhp";
  }) {}
}:
pkgs.stdenv.mkDerivation rec {
  pname = "rtl_433_mqtt_hass";
  version = "0.1.0";

  src = pkgs.fetchgit {
    url = "https://github.com/merbanan/rtl_433";
    rev = "4f152360b1602b7ae1201bc42eb8070e8258921d";
    sha256 = "sha256-g0wkQNsbiieHU8VYvnXGD+6PevFw5y0b7kEAo6BXTjc=";
  };

  buildInputs = [
  ];

  configurePhase = ''
  '';

  buildPhase = ''
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp examples/rtl_433_mqtt_hass.py $out/bin
    chmod u+x $out/bin/rtl_433_mqtt_hass.py
  '';
}
