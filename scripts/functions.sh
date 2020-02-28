_symlink () {
  local PREFIX="$1"
  shift

  for i in "$@"; do
    rootfile="$root/$i"
    targetfile="$target/$PREFIX$i"
    mkdir -p "$(dirname $targetfile)"
    if [ -L "$targetfile" ]; then
      rm "$targetfile"
    fi
    ln -sf "$rootfile" "$targetfile"
  done
}

symlink () {
  _symlink '' "$@"
}

symlink. () {
  _symlink '.' "$@"
}

detect-os () {
  uname -s 2>/dev/null || \
  uname -o 2>/dev/null
}
