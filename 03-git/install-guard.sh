#!/usr/bin/env bash
# Activates the guard in the CURRENT repo only (local config, nothing committed)
DIR="$(dirname "$(readlink -f "$0")")"
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || { echo "Run this inside a git repo."; exit 1; }
existing="$(git config --local --get core.hooksPath || true)"
if [ -n "$existing" ] && [ "$existing" != "$DIR/hooks" ]; then
  echo "This repo already uses hooks at: $existing"
  echo "Not overriding. Ask before changing the client's setup."
  exit 1
fi
git config --local core.hooksPath "$DIR/hooks"
echo "Guard ON for $(git rev-parse --show-toplevel)"
