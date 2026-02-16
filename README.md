<img width="1920" height="1080" alt="2026-02-16-140810_hyprshot" src="https://github.com/user-attachments/assets/ace0d692-9002-466f-a1de-1ce28e29cf5c" />

# dotfiles

My config files for my Linux development environment (Arch Linux and Hyprland)

## Requirements
Ensure you have these packages on your system

You should have a basic Hyprland environment set up first before using these dotfiles (I recommend using the Hyprland desktop option in the archinstall script)

### Git (duh)

```bash
sudo pacman -S --needed base-devel git
```

### yay (AUR helper)
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
```

### Stow (automated symlinking)

```bash
sudo pacman -S stow
```

## Installation

First, install the programs configured in these dotfiles

```bash
sudo pacman -S neovim tmux zsh eza bat hyprland hyprshot dunst cliphist kitty dolphin wofi archlinux-xdg-menu xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent qt5ct grim slurp libnotify notify-osd python-gobject mpd mpc mpd-mpris ncmpcpp ffmpeg pacman-contrib
# Fonts and icons
sudo pacman -S $(pacman -Ssq noto-fonts)
sudo pacman -S ttf-hack kvantum breeze-icons breeze
yay -S ttf-jetbrains-mono-nerd apple-fonts qt6ct-kde
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && rm -rf ~/.oh-my-zsh
```

Afterwards, clone this repo to your $HOME directory and cd into the cloned repo (make sure to setup SSH first)

```bash
git clone git@github.com:rosalgie/dotfiles.git $HOME/dotfiles --recursive
cd ~/dotfiles
```

Then, use stow to create symlinks

```bash
stow . --adopt && git restore .
```

> **NOTE FOR NON-ARCH LINUX USERS**: I use JetBrainsMono Nerd Font for Kitty and Apple fonts for hyprlock. To install JetBrainsMono Nerd Font userwide, [download and extract](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip) the .zip file with all of the fonts to `~/.local/share/fonts` (you may have to create the directory)

## Image credits
[bg1.jpg](https://www.pixiv.net/en/artworks/115001263) made by [furi / ふーり](https://www.pixiv.net/en/users/41736171)

[bg2.jpg](https://www.pixiv.net/en/artworks/118647339) and [bg3.jpg](https://www.pixiv.net/en/artworks/99144899) made by [縹 京介（ALPCMAS）](https://www.pixiv.net/en/users/2351667)

[bg4.png](https://wallhaven.cc/w/d6prd3) made by [Silriti](https://wallhaven.cc/user/Silriti)

[bg5.png's poster](https://www.reddit.com/r/evangelion/comments/w5er5t/unit_00_%E7%B6%BE%E6%B3%A2_%E3%83%AC%E3%82%A4_rei_digital_poster_me/) made by [u/Laserplanet2](https://www.reddit.com/user/Laserplanet2/), wallpaper edit made by me

[bg6.png](https://wallhaven.cc/w/5g6mj3) made by [Jean-Marc Denis](https://jmd.im/)

[bg7.png](https://commons.wikimedia.org/wiki/File:Black_Hole_Side.png) made by [852278-MCS](https://commons.wikimedia.org/wiki/User:852278-MCS)

[bg8.png](https://www.pixiv.net/en/artworks/131529266) made by [58 / fevercell](https://www.pixiv.net/en/users/54253226)

[bg9.png](https://wallhaven.cc/w/o5jxjp) made by an unknown author

[bg10.png](https://wallhaven.cc/w/49dxgd) made by an unknown author

[bg11.png](https://wallhaven.cc/w/g7vzk7) made by an unknown author

[bg12.png](https://wallhaven.cc/w/d6dgo3) made by an unknown author

[bg13.png](https://x.com/syego/status/1663884065957900288) made by [syego](https://x.com/syego)

[bg14.png](https://www.deviantart.com/i5yal/art/EXVO-wallpaper-833916256) made by [i5yal](https://www.deviantart.com/i5yal)

[misc-pfp](https://www.instagram.com/p/C_C9zK4M-9_/), [misc-pfp-2](https://www.instagram.com/p/DEsyUg3IEu3/), and [github-pfp-2](https://www.instagram.com/p/DAN6grmBM7v/) made by [alpinespirits](https://www.instagram.com/alpinespirits/)

[github pfp-1.png](https://www.pixiv.net/en/artworks/113901165) and [another pfp.jpg](https://www.pixiv.net/en/artworks/113658699) made by [Rune Xiao](https://www.pixiv.net/en/users/44473246)
