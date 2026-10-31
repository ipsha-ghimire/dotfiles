# Dotfiles workflow

Personal Hyprland dotfiles for Fedora, symlinked into `~/.config` with `ln -s`
(see README Install; `~/.config/hypr` etc. are symlinks into this repo — editing here edits the live config).

## How every change request is handled

1. **Plan** — spawn the `dotfiles-planner` agent with the user's request. It inspects the
   live system (hyprctl, devices, running processes) and the configs, and returns a plan.
   If the planner reports open questions, ask the user those first (AskUserQuestion).
2. **Approve** — show the user the plan in short form (what changes, which files, how it
   will be verified, how to undo) and ask yes/no. Do nothing to the system before a yes.
   On "no", ask what to change and re-plan.
3. **Apply + verify + heal** — spawn the `dotfiles-doctor` agent with the approved plan
   verbatim. It backs up, applies, verifies, fixes its own breakage, and rolls back if it
   can't get to a working state.
4. **Report** — tell the user what changed, what was verified, anything that needs a
   physical check from them (e.g. "rotate the monitor and press SUPER+O"), and update
   README.md if keybinds/behaviour changed.

Small read-only questions ("what's my terminal keybind?") don't need this loop.
Never commit or push unless the user asks.

## System facts

- Hyprland 0.47.2 (Wayland), waybar, wofi, kitty, mako, hyprpaper, hypridle, hyprlock, wlogout
- Laptop panel: `eDP-1`, 1920x1080@120
- External: BenQ GW2490T (23.8", 1920x1080@60, pivots to portrait) on `HDMI-A-1`
- Verify Hyprland changes with `hyprctl reload` then `hyprctl configerrors` (must be empty)
