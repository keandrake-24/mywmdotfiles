cp ./*/ -r ~/.config
read -s -p "Please input your sudo password for modifying /etc/nixos to install dependencies" password
cp ./*.nix /etc/nixos