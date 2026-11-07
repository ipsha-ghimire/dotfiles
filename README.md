# dotfiles

My personal dotfiles for Hyprland on Fedora.

## Stack

- **WM:** Hyprland
- **Bar:** Waybar
- **Launcher:** Wofi
- **Terminal:** Kitty
- **Shell:** Zsh + Oh My Zsh + Starship
- **Notifications:** Mako
- **Power menu:** Wlogout
- **Screenshots:** Flameshot
- **Theme:** Gruvbox Dark

## Install

```bash
git clone https://github.com/ipsha-ghimire/dotfiles.git ~/dotfiles

# Link each config into ~/.config (the real files stay in ~/dotfiles)
for c in hypr waybar wofi mako wlogout gtk-4.0 starship.toml; do
  ln -s ~/dotfiles/.config/$c ~/.config/$c
done
# These folders hold other machine-local files, so only the config file is linked
mkdir -p ~/.config/kitty ~/.config/gtk-3.0
ln -s ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
```

If a target folder already exists, move it aside first (e.g. `mv ~/.config/hypr ~/.config/hypr.old`); otherwise `ln -s` puts the link *inside* it.

`~/.config/hypr/monitors.conf` is generated (git-ignored) by `scripts/monitor-layout.sh`. On a fresh install, run `~/.config/hypr/scripts/monitor-layout.sh init` before first login.

## Structure

```
.config/
├── hypr/      # Hyprland, hyprlock, hypridle, hyprpaper
├── waybar/    # Status bar
├── kitty/     # Terminal
├── wofi/      # App launcher
├── mako/      # Notifications
├── wlogout/   # Power menu (layout + style)
├── gtk-3.0/   # GTK theme
└── gtk-4.0/   # GTK theme
```

## Keybindings

> SUPER = Windows key

### Essential

| Shortcut              | Action                                                       |
| --------------------- | ------------------------------------------------------------ |
| `SUPER + Enter`     | Terminal (kitty)                                             |
| `SUPER + D`         | App launcher (wofi)                                          |
| `SUPER + Q`         | Close window                                                 |
| `SUPER + F`         | Fullscreen                                                   |
| `SUPER + CTRL + L`  | Lock screen (also `SUPER + SHIFT + Q`)                     |
| `SUPER + V`         | Float/unfloat window                                         |
| `SUPER + SHIFT + R` | Reload Hyprland config                                       |
| `SUPER + SHIFT + E` | Exit Hyprland                                                |
| `SUPER + O`         | Toggle external monitor landscape/portrait (rotate it first) |
| `SUPER + P`         | Display mode menu (Extend / Laptop only / Monitor only / Mirror) |

### Apps

| Shortcut              | Opens   |
| --------------------- | ------- |
| `SUPER + B`         | Chrome  |
| `SUPER + SHIFT + B` | Brave   |
| `SUPER + C`         | VSCode  |
| `SUPER + SHIFT + D` | Discord |
| `SUPER + Y`         | YouTube |
| `SUPER + SHIFT + C` | Claude  |
| `SUPER + SHIFT + G` | ChatGPT |
| `SUPER + SHIFT + N` | Notion  |

### Window Management

| Shortcut                    | Action                         |
| --------------------------- | ------------------------------ |
| `SUPER + H/J/K/L`         | Focus left/down/up/right       |
| `SUPER + SHIFT + H/J/K/L` | Move window left/down/up/right |
| `SUPER + ALT + H/J/K/L`   | Resize window                  |

### Workspaces

| Shortcut                | Action                              |
| ----------------------- | ----------------------------------- |
| `SUPER + 1-4`         | Switch to workspace                 |
| `SUPER + SHIFT + 1-4` | Move window to workspace            |
| `SUPER + Tab`         | Next workspace                      |
| `SUPER + SHIFT + Tab` | Previous workspace                  |
| `SUPER + Scroll`      | Cycle workspaces                    |
| 3-finger swipe          | Cycle workspaces (touchpad gesture) |

The external BenQ (matched by its name, so other monitors on the HDMI port keep an automatic layout) sits to the right of the laptop screen (`eDP-1`), bottom-aligned. Workspaces 1-2 default to the laptop screen; 3-4 default to the BenQ.

Apps open on the screen under the mouse pointer; no app is tied to a workspace.

In Monitor only mode, unplugging the monitor turns the laptop screen back on within a few seconds; SUPER+SHIFT+R also restores it.

The office Dell S2421HN sits above the laptop, shifted left (move the pointer up from the laptop's left half).

### Screenshots & Recording

| Shortcut              | Action                                   |
| --------------------- | ---------------------------------------- |
| `Print`             | Full screen → clipboard                 |
| `SUPER + SHIFT + S` | Select region → annotate (Flameshot)    |
| `SUPER + ALT + S`   | Select region → annotate (Satty)        |
| `F9`                | Start screen recording (`~/record.sh`) |
| `F10`               | Stop screen recording                    |

**Satty:** drag a box on any screen, then draw with the tools in the top bar (arrow, box, text, blur, highlight).
`Ctrl+C` copies to the clipboard, `Ctrl+S` saves to `~/Pictures/Screenshots/`, `Esc` cancels.

### Other

| Shortcut                     | Action                                                    |
| ---------------------------- | --------------------------------------------------------- |
| `SUPER + SHIFT + V`        | Clipboard history                                         |
| `SUPER + `` ` `` `         | Toggle scratchpad terminal                                |
| `SUPER + SHIFT + `` ` `` ` | Move window to scratchpad                                 |
| Waybar → ⏻                 | Power menu (Wlogout: lock/logout/suspend/reboot/shutdown) |
| Waybar → SS                 | Screenshot menu (Satty / Flameshot)                       |
