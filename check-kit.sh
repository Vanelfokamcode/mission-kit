#!/usr/bin/env bash
# check-kit.sh: quality gate for the kit. Run it before pushing changes to the kit itself.
set -uo pipefail
KIT="$(dirname "$(readlink -f "$0")")"
cd "$KIT"
fail=0
pass() { printf 'PASS  %s\n' "$*"; }
bad()  { printf 'FAIL  %s\n' "$*"; fail=1; }
skip() { printf 'SKIP  %s\n' "$*"; }

scripts=(
  03-git/gday 03-git/gpush 03-git/lib.sh 03-git/install-guard.sh
  03-git/hooks/pre-commit 03-git/hooks/pre-push
  06-recaps/newlog setup.sh check-kit.sh tests/e2e/scan-leaks.sh
)

echo "== 1. Syntax"
for s in "${scripts[@]}"; do
  if [ ! -f "$s" ]; then bad "missing: $s"; continue; fi
  if bash -n "$s" 2>/dev/null; then pass "syntax: $s"; else bad "syntax error: $s"; fi
done

echo "== 2. shellcheck"
if command -v shellcheck >/dev/null 2>&1; then
  if shellcheck "${scripts[@]}"; then pass "shellcheck: no findings"; else bad "shellcheck reported findings (see above)"; fi
else
  skip "shellcheck not installed (sudo apt install shellcheck)"
fi

echo "== 3. Windows line endings in tracked text files"
if git grep -lI $'\r' -- . >/dev/null 2>&1; then
  bad "CRLF found in:"; git grep -lI $'\r' -- . | sed 's/^/        /'
else
  pass "no CRLF"
fi

echo "== 4. Sensitive files must not be tracked"
leaked="$(git ls-files | grep -E '^(06-logs|missions)/|\.docx$|(^|/)\.env($|\.)' || true)"
if [ -n "$leaked" ]; then bad "tracked sensitive files:"; printf '        %s\n' "$leaked"; else pass "nothing sensitive tracked"; fi

echo "== 5. Front matter of prompts and agents"
count=0
while IFS= read -r f; do
  count=$((count + 1))
  if [ "$(head -n 1 "$f")" != "---" ] || ! sed -n '2,5p' "$f" | grep -q '^description:'; then
    bad "front matter missing or without description: $f"
  fi
done < <(git ls-files '*.prompt.md' '*.agent.md')
pass "checked $count prompt/agent files"

echo "== 6. Executable bits"
for s in "${scripts[@]}"; do
  [ "$s" = "03-git/lib.sh" ] && continue
  mode="$(git ls-files -s -- "$s" | cut -c1-6)"
  [ -n "$mode" ] || continue
  if [ "$mode" = "100755" ]; then pass "executable: $s"; else bad "not executable in git: $s (run: git update-index --chmod=+x $s)"; fi
done

echo
if [ "$fail" -eq 0 ]; then echo "ALL CHECKS PASSED"; else echo "SOME CHECKS FAILED"; fi
exit "$fail"
