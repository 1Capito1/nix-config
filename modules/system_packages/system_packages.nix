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
    oh-my-posh
    alejandra
    gnome.gdm

    # LSP's
    nixd
    nil
    lua-language-server
  ];
}
