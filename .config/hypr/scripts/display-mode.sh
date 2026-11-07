#!/usr/bin/env bash
# Win+P style display menu (SUPER+P). Extend = back to the saved layout
set -euo pipefail

LAPTOP="eDP-1"

# First connected screen that isn't the laptop (HDMI-A-1, DP-1, ...), or nothing
external() {
    hyprctl monitors all -j | jq -r --arg l "$LAPTOP" '[.[] | select(.name != $l)][0].name // empty'
}

# Restart waybar so it draws a bar on every screen that is on now
restart_waybar() {
    pkill -x waybar || true
    for _ in 1 2 3 4 5 6 7 8 9 10; do pgrep -x waybar >/dev/null || break; sleep 0.2; done
    setsid -f waybar >/dev/null 2>&1 </dev/null
}

# Move workspaces 1-4 to one screen (missing ones are just skipped)
move_all_to() {
    for n in 1 2 3 4; do
        hyprctl dispatch moveworkspacetomonitor "$n" "$1" >/dev/null 2>&1 || true
    done
}

EXT="$(external)"
if [[ -z "$EXT" ]]; then
    hyprctl reload >/dev/null   # make sure the laptop is on
    restart_waybar
    notify-send "Display" "No external monitor connected" || true
    exit 0
fi

# Optional first argument picks the mode without the menu, e.g. display-mode.sh "Monitor only"
if [[ $# -gt 0 ]]; then
    choice="$1"
else
    choice="$(printf 'Extend\nLaptop only\nMonitor only\nMirror\n' | wofi --dmenu --prompt 'Display mode')" || exit 0
fi

case "$choice" in
    "Extend")
        hyprctl reload >/dev/null
        # Send workspaces back home: 1-2 laptop, 3-4 monitor
        for n in 1 2; do hyprctl dispatch moveworkspacetomonitor "$n" "$LAPTOP" >/dev/null 2>&1 || true; done
        for n in 3 4; do hyprctl dispatch moveworkspacetomonitor "$n" "$EXT" >/dev/null 2>&1 || true; done
        ;;
    "Laptop only")
        hyprctl reload >/dev/null
        hyprctl keyword monitor "$EXT, disable" >/dev/null
        move_all_to "$LAPTOP"
        ;;
    "Mirror")       hyprctl reload >/dev/null; hyprctl keyword monitor "$EXT, preferred, auto, 1, mirror, $LAPTOP" >/dev/null ;;
    "Monitor only")
        hyprctl reload >/dev/null
        hyprctl keyword monitor "$LAPTOP, disable" >/dev/null
        move_all_to "$EXT"
        # If the monitor gets unplugged, turn the laptop back on (stops once the laptop is on)
        (
            while sleep 2; do
                mons="$(hyprctl monitors -j)" || continue
                jq -e --arg l "$LAPTOP" 'any(.[]; .name == $l)' <<<"$mons" >/dev/null && exit 0
                jq -e --arg e "$EXT" 'any(.[]; .name == $e)' <<<"$mons" >/dev/null || { hyprctl reload >/dev/null; restart_waybar; exit 0; }
            done
        ) </dev/null >/dev/null 2>&1 & disown
        ;;
    *) exit 0 ;;
esac
restart_waybar
notify-send "Display" "$choice" || true
