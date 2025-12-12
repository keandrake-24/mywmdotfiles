{ config, pkgs, ... }:

{
    # Enable the sway window manager
    programs.sway = {
        enable = true;
    };

    environment.systemPackages = with pkgs; [ rofi ];

    # Enable xdg-desktop-portal for Wayland
    xdg.portal = {
        enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
        wlr.enable = true;
    };
    services.xdg-desktop-portal-wlr.enable = true;

    # Optional: Set environment variables for Wayland
    environment.variables = {
        QT_QPA_PLATFORM = "wayland"; # Enable Wayland for Qt apps
        XDG_CURRENT_DESKTOP = "sway";
        XDG_SESSION_TYPE = "wayland";
    };
}