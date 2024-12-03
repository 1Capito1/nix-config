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

    # DE stuffs
    hyprland
    hyprshot
    wofi
    waybar

    # LSP's
    nixd
    nil
    lua-language-server
    zig
  ];
}
