cp -r  */  ~/.config/
sudo cp -rv wallpapers/ /usr/share/backgrounds
CORE=(
    
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
    otf-font-awesome
    woff2-font-awesome
)
 
AUR=( 
    swayfx
    shotman
    gtklock
    arc-gtk-theme
    wdisplays
    lx-polkit-git
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
yay -S "${AUR[@]}" 
echo "do you want to install optionals???????????????? from the official repos (y/n): "
read install
if [ "$install" == "y" ];  then
    echo "ok installing..."
    sleep 2
    sudo pacman -S "${OPTIONAL[@]}"
fi

echo "do you want to install the one AUR optional: auto-cpufreq for laptop batteries?? (y/n): "
read install
if [ "$install" == "y" ];  then
    echo "ok installing..."
    sleep 2
    yay -S auto-cpufreq
fi
