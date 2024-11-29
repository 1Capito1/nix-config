{
  imports = [
    builtins.findFile
    "./"
    (path: builtins.match ".*\.nix$" path != null)
  ];
}
