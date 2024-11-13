{ config, pkgs, lib, ... }:

{
	home.username = "setht";
	home.homeDirectory = "/home/setht";

	xresources.properties = {
		"Xcursor.size" = 16;
		"Xft.dpi" = 172;
	};

	home.packages = with pkgs; [
# useful CLI Tools
		neofetch
			yazi
			tmux

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

	programs.neovim = {
		enable = true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;
		vimdiffAlias = true;
	};

	home.stateVersion = "23.11";

	programs.home-manager.enable = true;

    programs.tmux = {
        enable = true;
        clock24 = true;
    };
}
