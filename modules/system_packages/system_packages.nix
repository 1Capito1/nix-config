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

    # CLI Tools
    zoxide
    lazygit

    # Misc Tools
    libnotify

    # LSP's
    nixd
    nil
    lua-language-server
  ];
}
