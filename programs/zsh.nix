{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "simple";
    };
		shellAliases = {
			cat = "bat";
			rg = "batgrep";

			ls = "eza --color=always --group-directories-first --icons";
			la = "eza -a --color=always --group-directories-first --icons";
			ll = "eza -l --color=always --group-directories-first --icons";
			lt = "eza -aT --color=always --group-directories-first --icons";
			l = "eza -lah --color=always --group-directories-first --icons";
			cls = "clear && neofetch && ls";

			makkergruppe = "~/Desktop/T1/makkergruppe.sh";

			# cd aliases
			conf = "cd ~/.config";
			desk = "cd ~/Desktop";
			docs = "cd ~/Documents";
			downs = "cd ~/Downloads";
			music = "cd ~/Music";
			pics = "cd ~/Pictures";
			vids = "cd ~/Videos";

			pymacros = "cd ~/Desktop/Macros/python-macros";
			bashsh = "cd ~/Desktop/Macros/bash-scripts";
			digilr = "cd ~/Desktop/T1/digilær-innleveringer";
			kladding = "cd ~/Desktop/T1/kladding";
			backup = "cd ~/Desktop/Macros/bash-scripts/backup";

			nix = "cd ~/Nixos";
			home = "cd ~/.config/home-manager";
			nvimconf = "nvim ~/.config/nvim";
		};
	};

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
