#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
PACKAGE="$SCRIPT_DIR"
DEST="$HOME/.local/share/plasma/look-and-feel/com.framework.cogsplash"

mkdir -p "$DEST"

cp -a "$PACKAGE/metadata.json" "$DEST/"

rm -rf "$DEST/contents"
cp -a "$PACKAGE/contents" "$DEST/"

printf '%s\n' "Installed Framework Cog — Smooth Clockwise."
printf '%s\n' "Open System Settings → Appearance → Splash Screen and select it."
