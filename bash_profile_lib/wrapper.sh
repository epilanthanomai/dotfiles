. "$HOME/.bash_profile_lib/path.sh"

# Usage: wrap_with_default_arg val "$0" "$@"
# Check if the arg list is empty
# Find what bin would have been called if $0 weren't in the path. Useful for
# wrapper shim scripts.
function wrap_with_default_arg() {
  default_arg="$1"
  prog="$2"
  shift 2

  real_prog="$(wrapped_path $prog)"
  [ -x "$real_prog" ] || return 1
  use_default_arg "$default_arg" "$real_prog" "$@"
}

function use_default_arg() {
  default_arg="$1"
  prog="$2"
  shift 2

  if [ -z "$@" ]; then
    set -- "$default_arg"
  fi

  exec "$prog" "$@"
}

function wrapped_path() {
  remove_path "$(dirname $1)"
  which "$(basename $1)"
}
