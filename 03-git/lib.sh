# Shared helpers for gday and the git hooks
PROTECTED_BRANCHES="${PROTECTED_BRANCHES:-main master prod production}"
SECRET_PATTERN='(^|/)\.env(\..*)?$|\.pem$|\.key$|(^|/)id_(rsa|ed25519)|\.tfstate|\.tfvars$'

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

slugify() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' \
    | sed -E 's/[^a-z0-9]+/-/g; s/^-+//' | cut -c1-40 | sed -E 's/-+$//'
}

branch_prefix() {
  case "$1" in
    feat) echo feature ;;
    *) echo "$1" ;;
  esac
}
