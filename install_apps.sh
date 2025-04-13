
#!/bin/sh

set -e

echo "installing yay"
pacman -S yay 


#rofi themes:
echo "installing rofi"
yay -S rofi-wayland

yay -S nerd-fonts-noto-sans-regular-complete

yay -S 

echo "installing rofi themes"
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi/
chmod +x setup.sh
./setup.sh
cd $HOME
