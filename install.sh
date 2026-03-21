cp -r  */  ~/.config/
sudo cp -rv wallpapers/ /usr/share/backgrounds
CORE=(
    sway
    swayidle
    swaybg
    xorg-xwayland
    xdg-desktop-portal
    xdg-desktop-portal-wlr
)
PROGRAMS=(
    waybar
    rofi
    alacritty
    dunst
    nwg-look
    network-manager-applet
)
DEPS=(
    brightnessctl
    pulsemixer
    papirus-icon-theme
    ttf-jetbrains-mono
    noto-fonts
    ttf-font-awesome
)
 
AUR=(
    shotman
    gtklock
    arc-gtk-theme
    wdisplays
)
#official repos
OPTIONAL=(
    thunar
    cava
    ranger
    vlc
    handbrake
    fastfetch
    starship
)
 

OPTIONAL_AUR=(
    auto-cpufreq
)

echo "install core apps.."
sleep 2
sudo pacman -S "${CORE[@]}" "${PROGRAMS[@]}" "${DEPS[@]}"
