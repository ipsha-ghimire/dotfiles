# dotfiles

My personal dotfiles for Hyprland on Fedora.

## Stack
- **WM:** Hyprland
- **Bar:** Waybar
- **Launcher:** Wofi
- **Terminal:** Kitty
- **Shell:** Zsh + Oh My Zsh + Starship
- **Notifications:** Mako
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
| `SUPER + F1` | Lock screen |
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
| `SUPER + E` | File manager (Nautilus) |
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
| `SUPER + 1-9` | Switch to workspace |
| `SUPER + SHIFT + 1-9` | Move window to workspace |
| `SUPER + Tab` | Next workspace |
| `SUPER + SHIFT + Tab` | Previous workspace |
| `SUPER + Scroll` | Cycle workspaces |

### Screenshots
| Shortcut | Action |
|---|---|
| `Print` | Full screen → clipboard |
| `SUPER + SHIFT + S` | Select region → annotate (satty) |
| `SUPER + P` | Full screen → clipboard (backup) |

### Other
| Shortcut | Action |
|---|---|
| `SUPER + SHIFT + V` | Clipboard history |
| `SUPER + F2` | Focus laptop screen |
| `SUPER + F3` | Focus external monitor |
| `SUPER + `` ` `` ` | Toggle scratchpad terminal |
