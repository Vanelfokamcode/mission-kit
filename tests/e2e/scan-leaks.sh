#!/usr/bin/env bash
# usage: scan-leaks.sh <sanitized-file>   lists planted terms that survived
set -euo pipefail
DIR="$(dirname "$(readlink -f "$0")")"
f="${1:-}"
[ -f "$f" ] || { echo "usage: $0 <file>"; exit 2; }
leaks=0
while IFS= read -r term; do
  [ -n "$term" ] || continue
  case "$term" in \#*) [ "$term" = "#57" ] || [ "$term" = "#atlas-dev" ] || continue ;; esac
  if grep -qiF -- "$term" "$f"; then
    echo "LEAK: $term"
    leaks=$((leaks + 1))
  fi
done < "$DIR/planted-terms.txt"
if [ "$leaks" -eq 0 ]; then echo "PASS: no planted term found"; else echo "FAIL: $leaks term(s) survived"; exit 1; fi
