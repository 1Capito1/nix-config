{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprland
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;

    systemd.enable = true;

    settings = {};
  };
}
