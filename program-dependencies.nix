{ pkgs, ... }:

{
    imports = [
        ./swayconfiguration.nix
    ];
    # System packages
    environment.systemPackages = with pkgs; [
        # Add your program dependencies here, for example:
        alacritty #your terminal
        waybar #your taskbar 
        nwg-look #your gtk theme installer
        lolcat # a must definitely
        fastfetch # also a must
        ranger # eh this is pretty good not necessary to have a TUI file manager
        xfce.thunar #your file manager
        networkmanagerapplet #the applet
        google-chrome #your browser
        adwaita-icon-theme
    shotman #a lightweight screenshotter
        dunst #lightweight notification daemon
        auto-cpufreq #optimize battery
        pipewire #audio
        pulsemixer #dont you want to control your audio?
        brightnessctl #controlling your brigtness
    ];
    console.packages = with pkgs; [ terminus_font ];
    console.font = "Lat2-Terminus16";
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        pulse.enable = true; # PulseAudio compatibility
    };
    systemd.services.auto-cpufreq = {
        enable = true;
        serviceConfig = {
            Restart = "always";
        };
    };
    fonts.fontconfig.enable = true;
    fonts.packages = with pkgs; [
        font-awesome #allows text icons for waybar
        jetbrains-mono
        noto-fonts 
        noto-fonts-cjk
        noto-fonts-emoji
    ];

    # Enable the X server
    services.xserver.enable = true;

    programs.xwayland.enable = true;
     
    services.displayManager.ly.enable = true; 
}
