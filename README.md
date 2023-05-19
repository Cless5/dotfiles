# Welcome to my ~/.config! 

Here's how to [install](#setup) my dotfiles.

## My setup

\------------  
**OS**: [Arch Linux](https://archlinux.org/)  
**Shell**: zsh  
**Editor**: [Neovim](https://neovim.io/)  
**DE**: [qtile](http://www.qtile.org/)  
**Terminal**: kitty  
**App launcher**: Rofi  
**Theme**: [Nord](https://github.com/nordtheme/nord)  
\------------  

## Setup

You need to have any [nerdfont](https://www.nerdfonts.com/font-downloads) installed in your system, i use Iosevka and ShureTechMono

1. Install packages
```shell
# For arch users
sudo pacman -S qtile zsh rofi xorg xorg-server xorg-xrandr picom neovim kitty neofetch git lightdm lightdm-gtk-greeter
paru -S nvim-packer-git
```

2. Clone the repo
```shell
git clone https://github.com/cless5/dotfiles
cd dotfiles
```

3. Copy my files to your ~/.config
```shell
cp -r .zshrc ~/.zshrc
cp -r config/* ~/.config/
source ~/.zshrc
```

4. Install neovim plugins by running
```
:PackerInstall
```
inside neovim

5. Enable services
```shell
sudo systemctl enable lightdm
```

6. Modify `~/.config/qtile/autostart.sh` to put your screen and resolution in the `xrandr` line, and the path to your desktop wallpaper. You can check your available screens by running xrandr
```shell
#!/bin/bash

picom &

xrandr --output Virtual-1 --mode 1920x1080
feh --bg-fill /path/to/your/wallpaper
```

7. If you are not using Iosevka as your font, change the qtile and kitty config files to your prefered font:
```python
# ~/.config/qtile/settings/widgets.py

widget_defaults = dict(
    font="Iosevka NF"       # Replace your font here 
    ...
)
```

```
# ~/.config/kitty/kitty.conf
font_family ShureTechMono Nerd Font   # Replace your font here
...
```

8. Reboot your system
