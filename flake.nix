{
	description = "Import Flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
		home-manager = {
			url = "github:nix-community/home-manager/release-23.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs@{ nixpkgs, home-manager, ... }: {
		nixosConfigurations.setht = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };

			modules = [
				./hosts/setht/configuration.nix
				./modules/environment/environment.nix
				./modules/fonts/fonts.nix
                ./modules/system_packages/system_packages.nix

				home-manager.nixosModules.home-manager {
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;

					home-manager.users.setht = import ./hosts/setht/home.nix;
				}
			];
		};
	};
}
