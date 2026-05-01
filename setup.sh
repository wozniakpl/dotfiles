#!/bin/sh
exec </dev/tty
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply wozniakpl
