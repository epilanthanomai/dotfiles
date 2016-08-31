_PROMPT_GREEN="$(tput setaf 2)"
_PROMPT_RESET="$(tput op)"

function _prompt_leader() {
  local virtualenv_leader=''
  if [ -n "$VIRTUAL_ENV" ]; then
    local virtualenv_name="${VIRTUAL_ENV##*/}"
    virtualenv_leader="$_PROMPT_GREEN$virtualenv_name$_PROMPT_RESET":
  fi

  echo "$virtualenv_leader"
}
export PS1='$(_prompt_leader)\W\$ '
