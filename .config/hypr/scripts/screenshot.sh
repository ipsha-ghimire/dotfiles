#!/usr/bin/env bash
# Screenshots: satty | flameshot | (no arg) pick from a menu
set -euo pipefail

satty_shot() {
    # Esc in slurp = no region, so just stop
    region="$(slurp)" || exit 0
    [[ -n "$region" ]] || exit 0
    grim -g "$region" - | satty --filename - --copy-command wl-copy \
        --output-filename ~/Pictures/Screenshots/satty-%Y%m%d-%H%M%S.png --early-exit
}

flameshot_shot() {
    env XDG_CURRENT_DESKTOP=Hyprland flameshot gui
}

case "${1:-}" in
    satty)     satty_shot ;;
    flameshot) flameshot_shot ;;
    "")
        choice="$(printf 'Satty\nFlameshot\n' | wofi --dmenu --prompt 'Screenshot')" || exit 0
        case "$choice" in
            Satty)     satty_shot ;;
            Flameshot) flameshot_shot ;;
            *)         exit 0 ;;
        esac
        ;;
    *) echo "usage: $(basename "$0") [satty|flameshot]" >&2; exit 1 ;;
esac
