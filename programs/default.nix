{ ... }:

{
	imports = [
    ./neovim.nix
    ./texlive.nix
		./terminal.nix
		./japanese.nix
		# ./themes.nix # choses light theme for some reason
		./zsh.nix
		./git.nix
		./other.nix
	];
}
