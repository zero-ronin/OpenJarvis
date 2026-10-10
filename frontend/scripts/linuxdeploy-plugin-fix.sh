#!/bin/bash
set -euo pipefail

# Upstream repo (your fix is merged into master)
UPSTREAM_RAW="https://raw.githubusercontent.com/linuxdeploy/linuxdeploy-plugin-gstreamer/master/linuxdeploy-plugin-gstreamer.sh"

# Tauri's cache location for linuxdeploy plugins
TAURI_CACHE="$HOME/.cache/tauri"
mkdir -p "$TAURI_CACHE"

echo "Fetching linuxdeploy-plugin-gstreamer.sh from upstream master..."
curl -fsSL "$UPSTREAM_RAW" -o "$TAURI_CACHE/linuxdeploy-plugin-gstreamer.sh"
chmod +x "$TAURI_CACHE/linuxdeploy-plugin-gstreamer.sh"

echo "Vendored linuxdeploy-plugin-gstreamer.sh into $TAURI_CACHE"
