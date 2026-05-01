#!/bin/sh
set -e
BINDIR="$HOME/.local/bin"
mkdir -p "$BINDIR"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$BINDIR"
"$BINDIR/chezmoi" init --apply wozniakpl
