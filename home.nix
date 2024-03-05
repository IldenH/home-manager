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

    # discord
    # (pkgs.discord.override {
    #   withVencord = true;
    # })
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

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  # home.file = {
  #   # # Building this configuration will create a copy of 'dotfiles/screenrc' in
  #   # # the Nix store. Activating the configuration will then make '~/.screenrc' a
  #   # # symlink to the Nix store copy.
  #   # ".screenrc".source = dotfiles/screenrc;

  #   # # You can also set the file content immediately.
  #   # ".gradle/gradle.properties".text = ''
  #   #   org.gradle.console=verbose
  #   #   org.gradle.daemon.idletimeout=3600000
  #   # '';
  # };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ildenhnix/etc/profile.d/hm-session-vars.sh
  #
}
