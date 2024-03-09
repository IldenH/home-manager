{ pkgs, ... }:

{
  home.packages = with pkgs; [
		anki
		authenticator
		calc
		firefox
		flameshot
		geogebra6
		heroic
		python311
		thunderbird
    vesktop
		unclutter # doesn't work on wayland
		xorg.xmodmap
  ];

}
