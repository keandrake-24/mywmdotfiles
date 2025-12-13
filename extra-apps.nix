{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        htop
        vlc
        nwg-look 
        fastfetch 
        ranger 
        google-chrome #your browser
        obs
	starship
    ];
}
