{
  stdenvNoCC,
  fetchFromGitHub,
  lib,
}: let
  inherit (lib.strings) toLower;
in
  {
    name,
    version,
    rev,
    sha256,
    owner ? "errata-ai",
    repo ? name,
    rulesPath ? name, # Relative path to styles directory in repository
  }:
    stdenvNoCC.mkDerivation {
      name = "vale-style-${toLower name}";

      inherit version;

      src = fetchFromGitHub {
        inherit rev sha256 owner repo;
      };

      installPhase = ''
        mkdir $out
        cp -r ${rulesPath} $out
      '';

      passthru.packageName = name;
    }
