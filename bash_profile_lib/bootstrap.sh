function source_lib() {
  lib_sh="$HOME/.bash_profile_lib/$1.sh"
  if [ -n "$1" -a -f "$lib_sh" ]; then
    source "$lib_sh"
  fi
}
