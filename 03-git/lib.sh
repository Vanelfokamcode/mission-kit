# Shared helpers for gday, gpush and the git hooks
PROTECTED_BRANCHES="${PROTECTED_BRANCHES:-$(git config --get mission.protectedBranches 2>/dev/null || true)}"
PROTECTED_BRANCHES="${PROTECTED_BRANCHES:-main master prod production}"
SECRET_PATTERN='(^|/)\.env(\..*)?$|\.pem$|\.key$|\.p12$|\.pfx$|(^|/)id_(rsa|ed25519|ecdsa)|\.tfstate|\.tfvars(\.json)?$|(^|/)credentials(\.json)?$'
SECRET_ALLOW='\.(example|sample|template|pub)$'

warn() { printf 'WARNING: %s\n' "$*" >&2; }
die()  { printf 'ERROR: %s\n' "$*" >&2; exit 1; }
ok()   { printf 'OK: %s\n' "$*"; }

current_branch() { git symbolic-ref --short -q HEAD || true; }

is_protected() {
  local b="$1" p
  set -f
  for p in $PROTECTED_BRANCHES; do
    case "$b" in $p) set +f; return 0 ;; esac
  done
  set +f
  return 1
}

secret_files_staged() {
  git diff --cached --name-only | grep -Ei "$SECRET_PATTERN" | grep -Evi "$SECRET_ALLOW" || true
}

slugify() {
  local s="$1"
  if command -v perl >/dev/null 2>&1; then
    s="$(printf '%s' "$s" | perl -CS -Mutf8 -pe '$_ = lc; tr/àâäçéèêëîïôöùûüÿñ/aaaceeeeiioouuuyn/')"
  else
    s="$(printf '%s' "$s" | tr '[:upper:]' '[:lower:]')"
  fi
  printf '%s' "$s" | sed -E 's/[^a-z0-9]+/-/g; s/^-+//' | cut -c1-40 | sed -E 's/-+$//'
}

branch_prefix() {
  case "$1" in
    feat) echo feature ;;
    *) echo "$1" ;;
  esac
}
