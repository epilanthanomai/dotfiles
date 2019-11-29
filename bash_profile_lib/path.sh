function have_path() {
  [[ ":$PATH:" == *":$1:"* ]]
}

function remove_path() {
  local OLDIFS="$IFS"
  local USEPATH="$1"
  local STRIPPATH=":$PATH:"
  local p

  IFS=:
  for p in $USEPATH; do
    STRIPPATH="${STRIPPATH/:$p:/:}"
  done
  STRIPPATH="${STRIPPATH#:}"
  STRIPPATH="${STRIPPATH%:}"
  IFS="$OLDIFS"
  PATH="$STRIPPATH"
}

function prepend_path_force() {
  remove_path "$1"
  PATH="$1:$PATH"
}

# Mac /etc/profile calls /usr/libexec/path_helper, which forces system paths ahead
# of any locally configured ones. programs like vex operate by starting a
# subshell in an environment with a modified path. path_helper breaks this.
# If we have a venv, force it to the front to fix the damange done by
# path_helper :/
function force_venv_path_front() {
  if [ -n "$VIRTUAL_ENV" ] && have_path "$VIRTUAL_ENV/bin"; then
    prepend_path_force "$VIRTUAL_ENV/bin"
  fi  
}
