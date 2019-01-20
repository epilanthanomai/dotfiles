# see PATH below in prepend_missing_path
export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LC_ALL="$LANG"

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

source_lib local

if command -v pyenv &>/dev/null; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# local bin needs to come before pyenv shim path.
prepend_path_force node_modules/.bin:"$HOME"/.local/bin:"$HOME"/bin:"$HOME"/.cabal/bin

# cleanup
unset -f source_lib

# Some systems seem to keep nvm scripts globally, others in $NVM_DIR. Not
# sure why the difference.TODO: Find out why.
[ -s /usr/local/opt/nvm/nvm.sh ] && . /usr/local/opt/nvm/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
