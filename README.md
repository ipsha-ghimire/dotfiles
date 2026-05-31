# dotfiles
My personal dotfiles for Hyprland on Fedora.
Stack

WM: Hyprland
Bar: Waybar
Launcher: Wofi
Terminal: Kitty
Shell: Zsh + Oh My Zsh + Starship
Notifications: Mako
Theme: Gruvbox Dark

Install
bashgit clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles && stow .
Structure
.config/
├── hypr/      # Hyprland, hyprlock, hypridle, hyprpaper
├── waybar/    # Status bar
├── kitty/     # Terminal
├── wofi/      # App launcher
├── mako/      # Notifications
├── gtk-3.0/   # GTK theme
└── gtk-4.0/   # GTK theme
Keybindings

SUPER = Windows key

Essential
ShortcutActionSUPER + EnterTerminal (kitty)SUPER + DApp launcher (wofi)SUPER + QClose windowSUPER + FFullscreenSUPER + F1Lock screenSUPER + VFloat/unfloat windowSUPER + SHIFT + RReload Hyprland configSUPER + SHIFT + EExit Hyprland
Apps
ShortcutOpensSUPER + BChromeSUPER + SHIFT + BBraveSUPER + CVSCodeSUPER + SHIFT + DDiscordSUPER + EFile manager (Nautilus)SUPER + YYouTubeSUPER + SHIFT + CClaudeSUPER + SHIFT + GChatGPTSUPER + SHIFT + NNotion
Window Management
ShortcutActionSUPER + H/J/K/LFocus left/down/up/rightSUPER + SHIFT + H/J/K/LMove window left/down/up/rightSUPER + ALT + H/J/K/LResize window
Workspaces
ShortcutActionSUPER + 1-9Switch to workspaceSUPER + SHIFT + 1-9Move window to workspaceSUPER + TabNext workspaceSUPER + SHIFT + TabPrevious workspaceSUPER + ScrollCycle workspaces
Screenshots
ShortcutActionPrintFull screen → clipboardSUPER + SHIFT + SSelect region → annotate (satty)SUPER + PFull screen → clipboard (backup)
Other
ShortcutActionSUPER + SHIFT + VClipboard historySUPER + F2Focus laptop screenSUPER + F3Focus external monitorSUPER + ``  `` `Toggle scratchpad terminal
