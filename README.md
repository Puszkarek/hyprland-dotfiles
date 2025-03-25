
<h2 align="center">
 <b style="font-size:24px;line-height:24px;vertical-align:middle; color: #33ff00;"><i>Retro Terminal - sway-dotfiles</i></b>
</h2>

## Screenshots


## Info

|Purpose|Tool|
| - | :--: |
|**Lockscreen**|TODO|
|**Window Manager**|[Sway](https://github.com/swaywm/sway)|
|**Bar**|[waybar](https://github.com/Alexays/Waybar)|
|**Application Launcher**|[Rofi](https://github.com/lbonn/rofi)|
|**Notification Daemon**|TODO|
|**File Manager**|[Ranger](https://github.com/ranger/ranger), [Superfile](https://github.com/yorukot/superfile)|
|**Terminal Emulator**|[Kitty](https://github.com/kovidgoyal/kitty)|
|**Shell**|[Fish](https://github.com/fish-shell/fish-shell)|
|**Shell Framework**|[Oh-My-Fish](https://github.com/oh-my-fish/oh-my-fish)|
|**Icons**|TODO|
|**Music Player**|[cmus](https://github.com/cmus/cmus)|
|**Music Lyric Visualizer**|[cmus-auto-lyrics](https://github.com/mzivic7/cmus-auto-lyrics)|
|**Font**|[Share Tech Mono](https://fonts.google.com/specimen/Share+Tech+Mono)|
|**Cursor**|[Breeze Hacker](https://github.com/clayrisser/breeze-hacked-cursor-theme)|

### Dev Info
| - | :--: |
|**OS**|[Arch Linux](https://archlinux.org/)|
|**Database Visualizer**|[harlequin](https://harlequin.sh/)|
|**MongoDB Visualizer**|[Vi Mongo](https://www.vi-mongo.com/)|
|**Postman Alternative**|[ATAC](https://github.com/Julien-cpsn/ATAC)|

### Dependencies
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)


## Keybinds 
|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Super + Enter`        | Launch terminal (kitty)                  |
| `Super + D`            | Launch Rofi                              |
| `Super + Q`            | Close current window                     |


## Manual Installation (Arch Linux)

### Installing Dependencies
1. Install [Rofi](https://github.com/davatorium/rofi/blob/next/INSTALL.md)
    ```
    sudo pacman -S rofi
    ```
1. Install [Ranger](https://github.com/ranger/ranger?tab=readme-ov-file)
    ```
    sudo pacman -S ranger
    ```
1. Install [Kitty](ttps://github.com/kovidgoyal/kitty)
    ```
    sudo pacman -S kitty
    ```
1. Install [Fish](https://github.com/oh-my-fish/oh-my-fish)
    ```
    sudo pacman -S fish
    curl -L https://get.oh-my.fish | fish
    ```
1. Install [Waybar](https://github.com/Alexays/Waybar)
    ```
    sudo pacman -S waybar
    ```
### Moving Files
1. Copy `config` folder to `~/.config`
   ```
   cp -r config/* ~/.config
   ```
1. Copy `zen-browser` files
   ```
   cp -r zen-browser/* ~/.zen/${PROFILE}/chrome/ 
   ```
#### Moving icons
```
# copy discord (.config/discord)
sudo cp -r ./.config/discord ~/.config/
# copy all other icons
sudo cp -r ./icons/hicolor /usr/share/icons/
sudo gtk-update-icon-cache -f -t /usr/share/icons/hicolor
```

### Theming



### References

### Inspiration


### TODOs
- [ ] Add screenshots
- [ ] Add swaybar config
- [ ] Add icons theme
- [ ] Add fonts
- [ ] Add vscode theme
- [ ] Add gnome theme
- [ ] Add cursor theme
- [ ] Create script to automate the install