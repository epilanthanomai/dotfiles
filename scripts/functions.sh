symlink () {
  for i in "$@"; do
    rootfile="$root"/"$i"
    targetfile="$target"/"$i"
    if [ -L "$targetfile" ]; then
      rm "$targetfile"
    fi
    ln -sf "$rootfile" "$targetfile"
  done
}

symlink. () {
  for i in "$@"; do
    rootfile="$root"/"$i"
    targetfile="$target"/."$i"
    if [ -L "$targetfile" ]; then
      rm "$targetfile"
    fi
    ln -sf "$rootfile" "$targetfile"
  done
}
