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
    zsh
    fprintd
    wev
    brightnessctl
    bitwarden-desktop

    # CLI Tools
    zoxide
    lazygit

    # Misc Tools
    libnotify
    jq
    slurp
    wl-clipboard

    # DE stuffs
    hyprland
    hyprshot
    wofi
    waybar
    swaynotificationcenter
    hyprlock
    hypridle
    hyprpaper

    # LSP's
    nixd
    nil
    lua-language-server
    zig
  ];
}
