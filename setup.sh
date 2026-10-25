#!/usr/bin/env bash
# setup.sh: prepare a fresh clone of mission-kit on this machine
# usage: ./setup.sh           (checks only, changes nothing)
#        ./setup.sh --apply   (also updates ~/.bashrc, creates 06-logs folders, sets exec permissions)
set -euo pipefail
KIT="$(dirname "$(readlink -f "$0")")"
apply=0
[ "${1:-}" = "--apply" ] && apply=1
ok()   { printf 'OK      %s\n' "$*"; }
todo() { printf 'TO DO   %s\n' "$*"; }

# Git version (git switch needs 2.23 or later)
read -r major minor <<<"$(git --version | sed -E 's/[^0-9]*([0-9]+)\.([0-9]+).*/\1 \2/')"
if [ "$major" -gt 2 ] || { [ "$major" -eq 2 ] && [ "$minor" -ge 23 ]; }; then
  ok "$(git --version)"
else
  todo "git is older than 2.23: update it"
fi

# Optional helper for accents in branch names
if command -v perl >/dev/null 2>&1; then ok "perl found"; else todo "perl missing (optional: accents in branch names will be simplified)"; fi

# Old gday function in ~/.bashrc would hide the script
if [ -f "$HOME/.bashrc" ] && grep -qE '^gday\(\)|^function gday' "$HOME/.bashrc"; then
  todo "an old gday function exists in ~/.bashrc and hides the script (add: unset -f gday at the end)"
fi

# Executable scripts
scripts="03-git/gday 03-git/gpush 03-git/install-guard.sh 03-git/hooks/pre-commit 03-git/hooks/pre-push 06-recaps/newlog setup.sh"
for s in $scripts; do
  if [ -x "$KIT/$s" ]; then ok "executable: $s"
  elif [ "$apply" -eq 1 ]; then chmod +x "$KIT/$s"; ok "made executable: $s"
  else todo "not executable: $s"; fi
done

# PATH entries
for d in 03-git 06-recaps; do
  if [ -f "$HOME/.bashrc" ] && grep -qF "$KIT/$d" "$HOME/.bashrc"; then
    ok "PATH already set for $d"
  elif [ "$apply" -eq 1 ]; then
    printf 'export PATH="%s/%s:$PATH"\n' "$KIT" "$d" >> "$HOME/.bashrc"
    ok "PATH added for $d"
  else
    todo "PATH missing for $d"
  fi
done

# Data folders (ignored by git, so absent in a fresh clone)
for d in daily sanitized weekly monthly cesi; do
  if [ -d "$KIT/06-logs/$d" ]; then ok "06-logs/$d exists"
  elif [ "$apply" -eq 1 ]; then mkdir -p "$KIT/06-logs/$d"; ok "created 06-logs/$d"
  else todo "06-logs/$d missing"; fi
done

echo
echo "Git identity here: $(git config user.name || echo '(none)') <$(git config user.email || echo 'none')>"
echo "At work, set it PER REPOSITORY with the company e-mail: git config user.email ..."
[ "$apply" -eq 1 ] && echo "Open a new terminal (or: source ~/.bashrc) to load the PATH."
exit 0
