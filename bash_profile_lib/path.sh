function have_path() {
  [[ ":$PATH:" == *":$1:"* ]]
}

function prepend_path_force() {
  local OLDIFS="$IFS"
  local USEPATH="$1"
  local STRIPPATH=":$PATH:"
  local p
  shift

  IFS=:
  for p in $USEPATH; do
    STRIPPATH="${STRIPPATH/:$p:/:}"
  done
  STRIPPATH="${STRIPPATH#:}"
  STRIPPATH="${STRIPPATH%:}"
  IFS="$OLDIFS"
  PATH="$USEPATH:$STRIPPATH"
}
