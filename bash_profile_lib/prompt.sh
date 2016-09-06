_PROMPT_GREEN="$(tput setaf 2)"
_PROMPT_CYAN="$(tput setaf 6)"
_PROMPT_RESET="$(tput op)"

_prompt_branch='\['"$_PROMPT_GREEN"'\]${VIRTUAL_ENV##*/}\['"$_PROMPT_RESET"'\]:'
_prompt_virtualenv='\['"$_PROMPT_CYAN"'\]$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\['"$_PROMPT_RESET"'\]:'

export PS1="$_prompt_branch$_prompt_virtualenv"'\W\$ '
