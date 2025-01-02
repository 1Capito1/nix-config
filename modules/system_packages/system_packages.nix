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
    gdm
    zsh
    fprintd
    wev
    brightnessctl
    bitwarden-desktop
    ripcord
    wine
    winetricks
    steam
    python3
    discord
    SDL2

    # CLI Tools
    zoxide
    lazygit
    python312Packages.git-filter-repo
    mpd

    # Misc Tools
    libnotify
    jq
    slurp
    wl-clipboard
    steam-run

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
    rust-analyzer
    
    # compilers
    cargo
    rustup
    zig

    #shhhh
    renpy
  ];
}
