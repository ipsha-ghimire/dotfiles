~/dotfiles/
└── .config/
    ├── hypr/       ← hyprland, hyprlock, hypridle, hyprpaper configs
    ├── waybar/     ← bar config + stylesheet
    ├── wofi/       ← launcher stylesheet
    ├── mako/       ← notification config
    └── kitty/      ← terminal config


| Tool                | What it does                                               |
| ------------------- | ---------------------------------------------------------- |
| **waybar**    | The status bar — shows workspaces, clock, volume, network |
| **wofi**      | App launcher — press a key, type app name, open it        |
| **hyprpaper** | Sets your wallpaper                                        |
| **hyprlock**  | Locks your screen                                          |
| **hypridle**  | Watches for inactivity → dims screen → triggers hyprlock |
| **mako**      |  shows notification popups (install next)                 |
| **grim**      | Takes screenshots                                          |
| **slurp**     | Lets you select a screen region (used with grim)           |
| **yazi**      | Terminal file manager                                      |
| **satty**     | Annotates screenshots (arrows, text, highlights)           |




| Shortcut                    | Does                                |
| --------------------------- | ----------------------------------- |
| `SUPER + Enter`           | Terminal                            |
| `SUPER + D`               | App launcher                        |
| `SUPER + B`               | Chrome                              |
| `SUPER + SHIFT + B`       | Brave                               |
| `SUPER + C`               | VSCode                              |
| `SUPER + SHIFT + D`       | Discord                             |
| `SUPER + E`               | File manager                        |
| `SUPER + Q`               | Close window                        |
| `SUPER + F`               | Fullscreen                          |
| `SUPER + V`               | Float window                        |
| `SUPER + L`               | Lock screen                         |
| `SUPER + H/J/K/L`         | Focus left/down/up/right            |
| `SUPER + SHIFT + H/J/K/L` | Move window left/down/up/right      |
| `SUPER + ALT + H/J/K/L`   | Resize window                       |
| `SUPER + 1-9`             | Switch workspace                    |
| `SUPER + SHIFT + 1-9`     | Move window to workspace            |
| `SUPER + Tab`             | Next workspace                      |
| `SUPER + SHIFT + Tab`     | Previous workspace                  |
| `SUPER + Scroll`          | Cycle workspaces                    |
| `Print`                   | Screenshot full screen → clipboard |
| `SUPER + SHIFT + S`       | Screenshot region → annotate       |
| `SUPER + SHIFT + P`       | Screenshot → save to Pictures      |
| `SUPER + SHIFT + V`       | Clipboard history                   |
| `SUPER + `` ``` `         | Scratchpad terminal                 |
| `SUPER + SHIFT + R`       | Reload Hyprland config              |
| `SUPER + SHIFT + E`       | Exit Hyprland                       |

desktop entry:

| Shortcut              | Opens   |
| --------------------- | ------- |
| `SUPER + Y`         | YouTube |
| `SUPER + SHIFT + C` | Claude  |
| `SUPER + SHIFT + G` | ChatGPT |

bind = $mod,  Return,  exec,  $terminal
         ↓       ↓       ↓       ↓
      SUPER   Enter   run    kitty

example when i press super+ enter execute terminal


**The full pattern:**

```
bind = MODIFIER, KEY, ACTION, ARGUMENT
```

Workspace guide:

Workspace 1 → Terminal (kitty)
Workspace 2 → Browser (Chrome)
Workspace 3 → VSCode
Workspace 4 → Notion
Workspace 6 → Discord


**Window Rules:**

```
pavucontrol  → floats automatically (audio control)
blueman      → floats automatically (bluetooth)
Picture-in-Picture → floats automatically
```
