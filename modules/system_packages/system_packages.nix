{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    kitty
    xclip
    fish
    luarocks
    sqlite
    gcc
    lua-language-server
    nixd
    oh-my-posh
    alejandra
    gnome.gdm
  ];
}
