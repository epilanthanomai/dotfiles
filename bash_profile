export PATH="$HOME"/bin:"$PATH"
export EDITOR=vim


function source_lib() {
  lib_sh="$HOME/.bash_profile_lib/$1.sh"
  if [ -n "$1" -a -f "$lib_sh" ]; then
    source "$lib_sh"
  fi
}

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`

unset -f source_lib
