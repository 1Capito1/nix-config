{
  programs.tmux = {
    enable = true;
    clock24 = true;
    extraConfig = ''
      source-file ~/.config/nixos/modules/user_programs/cli/config_files/.tmux.conf
    '';
  };
}
