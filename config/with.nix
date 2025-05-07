{
  vale,
  buildValeConfig,
  runCommand,
}:
config:
runCommand "vale-with-config"
  {
    inherit vale;
  }
  ''
    mkdir -p $out
    cp -r ${vale}/* $out/
    cp ${buildValeConfig config} $out/.vale.ini
  ''
