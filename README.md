
<h2 align="center">
 <b style="font-size:24px;line-height:24px;vertical-align:middle; color: #33ff00;"><i>Retro Terminal - sway-dotfiles</i></b>
</h2>



## Screenshots

TODO

## Info

|Purpose|Tool|
| - | :--: |
|**Lockscreen**|TODO|
|**Window Manager**|[Sway](https://github.com/swaywm/sway)|
|**Bar**|[waybar](https://github.com/Alexays/Waybar)|
|**Application Launcher**|[Rofi](https://github.com/lbonn/rofi)|
|**Notification Daemon**|TODO|
|**File Manager**|[Ranger](https://github.com/ranger/ranger)|
|**Terminal Emulator**|[Kitty](https://github.com/kovidgoyal/kitty)|
|**Shell**|[Fish](https://github.com/fish-shell/fish-shell)|
|**Shell Framework**|[Oh-My-Fish](https://github.com/oh-my-fish/oh-my-fish)|
|**Icons**|TODO|
|**Music Player**|TODO: Probably [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) with [mopidy-tidal](https://github.com/tehkillerbee/mopidy-tidal)|
|**Font**|[Share Tech Mono](https://fonts.google.com/specimen/Share+Tech+Mono)|


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
### Moving Files
1. Copy `config` folder to `~/.config`
   ```
   cp -r config/* ~/.config
   ```
1. Copy `zen-browser` files
   ```
   cp -r zen-browser/* ~/.zen/${PROFILE}/chrome/ 
   ```

### Theming
- `swaymsg gaps inner all set 10`

TODO: create steps description:
- Download fonts
- Download vscode theme
- Move zen browser theme

TODO: Create script to automate the install

### References

### Inspiration
