# see PATH below in prepend_missing_path
export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1

function source_lib() {
  lib_sh="$HOME/.bash_profile_lib/$1.sh"
  if [ -n "$1" -a -f "$lib_sh" ]; then
    source "$lib_sh"
  fi
}

source_lib path
source_lib prompt

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`

prepend_path_force node_modules/.bin:"$HOME"/.local/bin:"$HOME"/bin:"$(python3 -m site --user-base)"/bin
force_venv_path_front

# cleanup
unset -f source_lib

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
