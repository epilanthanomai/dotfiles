_PROMPT_GREEN="$(tput setaf 2)"
_PROMPT_CYAN="$(tput setaf 6)"
_PROMPT_RESET="$(tput op)"

function _current_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

function _prompt_leader() {
  local virtualenv_leader=''
  if [ -n "$VIRTUAL_ENV" ]; then
    local virtualenv_name="${VIRTUAL_ENV##*/}"
    virtualenv_leader="$_PROMPT_GREEN$virtualenv_name$_PROMPT_RESET":
  fi

  local branch_leader=''
  local current_branch="$(_current_branch)"
  if [ -n "$current_branch" ]; then
    branch_leader="$_PROMPT_CYAN$current_branch$_PROMPT_RESET:"
  fi

  echo "$virtualenv_leader$branch_leader"
}
export PS1='$(_prompt_leader)\W\$ '
