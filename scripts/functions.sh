_symlink () {
  local PREFIX="$1"
  shift

  for i in "$@"; do
    rootfile="$root/$i"
    relativetarget="$PREFIX$i"
    targetfile="$target/$relativetarget"
    mkdir -p "$(dirname $targetfile)"
    if [ -L "$targetfile" ]; then
      rm "$targetfile"
    fi
    if [ -d "$targetfile" ]; then
      echo "skipping $relativetarget: directory exists" >&2
      continue
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
