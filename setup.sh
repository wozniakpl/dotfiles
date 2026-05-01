#!/bin/sh
set -e
BINDIR="$HOME/.local/bin"
mkdir -p "$BINDIR"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$BINDIR"
CHEZMOI="$BINDIR/chezmoi"
if [ -d "$HOME/.local/share/chezmoi" ]; then
    "$CHEZMOI" update
else
    "$CHEZMOI" init --apply wozniakpl
fi
