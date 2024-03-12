{
  description = "Home Manager configuration of ildenhnix";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
		nix-colors.url = "github:misterio77/nix-colors";
		hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."ildenhnix" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

				extraSpecialArgs = { inherit inputs; };

        modules = [ ./home.nix ];

      };
    };
}
