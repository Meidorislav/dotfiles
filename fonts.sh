#!/bin/sh
# Installs fonts that aren't packaged in Void repos.
set -e

MONOCRAFT_VERSION=v4.2.1
dir="$HOME/.local/share/fonts/Monocraft"

mkdir -p "$dir"
curl -fsSL -o "$dir/Monocraft-nerd-fonts-patched.ttc" \
    "https://github.com/IdreesInc/Monocraft/releases/download/$MONOCRAFT_VERSION/Monocraft-nerd-fonts-patched.ttc"
fc-cache -f "$dir"
