{
  config,
  pkgs,
  lib,
  ...
}: let
  baseDir = builtins.getEnv "NIXOS_CONFIG_DIR";
in {
  home.username = "setht";
  home.homeDirectory = "/home/setht";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };
  imports = [
    ../../modules/user_programs/default.nix
  ];
  home.packages = with pkgs; [
    # useful CLI Tools
    neofetch
    fastfetch
    yazi
    tmux

    # important
    spotify
    discord

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep
    jq
    yq-go
    eza
    fzf

    # misc
    cowsay
    lolcat
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg
    oh-my-zsh

    nix-output-monitor

    glow # preview md
    btop
  ];

  programs.git = {
    enable = true;
    userName = "Seth Tootell";
    userEmail = "seth.l.tootell@gmail.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#setht";
    };
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
