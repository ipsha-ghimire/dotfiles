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
cd ~/dotfiles && stow .
```

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
| Shortcut | Action |
|---|---|
| `SUPER + Enter` | Terminal (kitty) |
| `SUPER + D` | App launcher (wofi) |
| `SUPER + Q` | Close window |
| `SUPER + F` | Fullscreen |
| `SUPER + CTRL + L` | Lock screen (also `SUPER + SHIFT + Q`) |
| `SUPER + V` | Float/unfloat window |
| `SUPER + SHIFT + R` | Reload Hyprland config |
| `SUPER + SHIFT + E` | Exit Hyprland |

### Apps
| Shortcut | Opens |
|---|---|
| `SUPER + B` | Chrome |
| `SUPER + SHIFT + B` | Brave |
| `SUPER + C` | VSCode |
| `SUPER + SHIFT + D` | Discord |
| `SUPER + Y` | YouTube |
| `SUPER + SHIFT + C` | Claude |
| `SUPER + SHIFT + G` | ChatGPT |
| `SUPER + SHIFT + N` | Notion |

### Window Management
| Shortcut | Action |
|---|---|
| `SUPER + H/J/K/L` | Focus left/down/up/right |
| `SUPER + SHIFT + H/J/K/L` | Move window left/down/up/right |
| `SUPER + ALT + H/J/K/L` | Resize window |

### Workspaces
| Shortcut | Action |
|---|---|
| `SUPER + 1-4` | Switch to workspace |
| `SUPER + SHIFT + 1-4` | Move window to workspace |
| `SUPER + Tab` | Next workspace |
| `SUPER + SHIFT + Tab` | Previous workspace |
| `SUPER + Scroll` | Cycle workspaces |
| 3-finger swipe | Cycle workspaces (touchpad gesture) |

Workspaces 1-2 default to the laptop screen (`eDP-1`); 3-4 default to the external monitor (`HDMI-A-1`).

### Screenshots & Recording
| Shortcut | Action |
|---|---|
| `Print` | Full screen → clipboard |
| `SUPER + SHIFT + S` | Select region → annotate (Flameshot) |
| `SUPER + P` | Full screen → clipboard (backup) |
| `F9` | Start screen recording (`~/record.sh`) |
| `F10` | Stop screen recording |

### Other
| Shortcut | Action |
|---|---|
| `SUPER + SHIFT + V` | Clipboard history |
| `SUPER + `` ` `` ` | Toggle scratchpad terminal |
| `SUPER + SHIFT + `` ` `` ` | Move window to scratchpad |
| Waybar → ⏻ | Power menu (Wlogout: lock/logout/suspend/reboot/shutdown) |
| Waybar → SS | Take screenshot (Flameshot) |
