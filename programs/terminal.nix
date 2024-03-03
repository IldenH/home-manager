{ config, pkgs, ... }:

{
	home.packages = with pkgs; [
	  nerdfonts
	];

	programs.wezterm = {
		enable = true;
		package = pkgs.wezterm;
		enableZshIntegration = true;
		colorSchemes = {
			base16 = with config.colorScheme.palette; {
				foreground = "#${base06}";
				background = "#${base00}";
				cursor_bg = "#${base06}";
				cursor_fg = "#${base00}";
				cursor_border = "#${base06}";
				selection_fg = "#${base00}";
				selection_bg = "#${base02}";
				scrollbar_thumb = "#${base03}";
				split = "#${base02}";
				compose_cursor = "${base07}";
				ansi = [
					"#${base00}"
					"#${base08}"
					"#${base0B}"
					"#${base0A}"
					"#${base0D}"
					"#${base0E}"
					"#${base0C}"
					"#${base06}"
				];
				brights = [
					"#${base00}"
					"#${base08}"
					"#${base0B}"
					"#${base0A}"
					"#${base0D}"
					"#${base0E}"
					"#${base0C}"
					"#${base06}"
				];
			};
		};
		extraConfig = ''
		local config = {
			enable_wayland = true,
			color_scheme = "base16",
			window_background_opacity = 0.92,
			use_fancy_tab_bar = false,
			font = wezterm.font "JetBrainsMono Nerd Font",
			font_size = 11.5,
		}
		return config
		'';
	};
}
