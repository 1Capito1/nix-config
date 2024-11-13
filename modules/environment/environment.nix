{config, ...}:
{
	environment.etc."nixos" = {
		source = "/etc/nixos";
		mode = "0770";
		group = "nixos";
		user = "root";
	};
}
