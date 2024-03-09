{ config, pkgs, inputs, ... }:

{
  home = {
    username = "ildenhnix";
    homeDirectory = "/home/ildenhnix";
    stateVersion = "23.11";
  };

  imports = [
		inputs.nix-colors.homeManagerModules.default
		./programs
  ];

	colorScheme = inputs.nix-colors.colorSchemes.catppuccin-macchiato;

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    vesktop
		flameshot
		anki
		unclutter # doesn't work on wayland
		heroic
		thunderbird
		authenticator
		python311
		xorg.xmodmap
		geogebra6
		calc
  ];

	programs = {
		git = {
			enable = true;
			userName = "IldenH";
			userEmail = "IldenH.1@proton.me";
			# aliases = {
			#   pu = "push";
			#   co = "checkout";
			#   cm = "commit";
			# };
			extraConfig = {
				credential.helper = "store"; # I should probably switch to ssh
			};
		};
		home-manager.enable = true;
	};
}
