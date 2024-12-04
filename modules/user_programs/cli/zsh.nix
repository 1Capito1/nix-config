{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        initExtra = "source ~/.zlogin";
        shellAliases = {
            update = "~/.nix-rebuild.sh";
            cd = "z";
        };
        oh-my-zsh = {
            enable = true;
            plugins = ["git" "sudo"];
            theme = "agnoster";
        };
        zplug = {
            enable = true;
            plugins = [
                { name = "zsh-users/zsh-autosuggestions"; }
                { name = "zdharma-continuum/fast-syntax-highlighting"; }
                { name = "zsh-users/zsh-completions"; }
            ];
        };
    };
}
