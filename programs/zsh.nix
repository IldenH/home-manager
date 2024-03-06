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
		initExtra = ''
			neofetch
			ex = () {
				if [ -f $1 ] ; then
					case $1 in
						*.tar.bz2) tar xjf $1 ;;
						*.tar.gz)  tar xzf $1 ;;
						*.bz2)     bunzip2 $1 ;;
						*.rar)     ${pkgs.unrar-wrapper}/bin/unrar x $1 ;;
						*.gz)      gunzip $1 ;;
						*.tar)     tar xf $1 ;;
						*.tbz2)    tar xjf $1 ;;
						*.tgz)     tar xzf $1 ;;
						*.zip)     ${pkgs.unzip}/bin/unzip $1 ;;
						*.Z)       uncompress $1 ;;
						*.7z)      ${pkgs.p7zip}/bin/7z x $1 ;;
						*.deb)     ar x $1 ;;
						*.tar.xz)  tar xf $1 ;;
						*.tar.zst) unzstd $1 ;;
						*)         echo "Could not extract $1"
					esac
				else
					echo "$1 is not a valid file"
				fi
		}
		'';
	};
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
