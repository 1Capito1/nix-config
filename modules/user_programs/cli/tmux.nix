{
  programs.tmux = {
    enable = true;
    clock24 = true;
    extraConfig = ''
      source-file ./config_files/.tmux.conf
    '';
  };
}
