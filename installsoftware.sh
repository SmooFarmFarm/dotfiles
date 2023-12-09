sudo rm -rf ~/Distrobox/yay
sudo pacman -Syu base-devel git --noconfirm 
cd ~/Distrobox
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -S nano yt-dlp python ffmpeg htop btop tldr inxi chromium standardnotes-bin iscan iscan-plugin-gt-s650 simple-scan remmina --noconfirm
distrobox-export -a /bin/standard-notes simple-scan remmina
cd ~
sudo ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak
sudo ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree

