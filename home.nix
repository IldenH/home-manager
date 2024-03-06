{ config, pkgs, ... }:

{
  home = {
    username = "ildenhnix";
    homeDirectory = "/home/ildenhnix";
    stateVersion = "23.11";
  };

  imports = [
    ./programs/neovim.nix
    ./programs/texlive.nix
		# ./programs/terminal.nix
		./programs/neofetch.nix
		./programs/japanese.nix
		# ./programs/themes.nix # choses light theme for some reason
		./programs/zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    vesktop
		wezterm
		flameshot
		anki
		unclutter # doesn't work on wayland
		bat
		eza
		heroic
		thunderbird
		authenticator
		python311
		xorg.xmodmap
		geogebra6
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
