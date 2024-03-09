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

	programs.home-manager.enable = true;
}
