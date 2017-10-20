export PATH=node_modules/.bin:.cabal-sandbox/bin:"$HOME"/bin:"$HOME"/.cabal/bin:"$PATH"
export EDITOR=vim
export NVM_DIR="$HOME/.nvm"

function source_lib() {
  lib_sh="$HOME/.bash_profile_lib/$1.sh"
  if [ -n "$1" -a -f "$lib_sh" ]; then
    source "$lib_sh"
  fi
}

source_lib prompt

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`


# cleanup
unset -f source_lib

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
