_PROMPT_GREEN="$(tput setaf 2)"
_PROMPT_YELLOW="$(tput setaf 3)"
_PROMPT_MAGENTA="$(tput setaf 5)"
_PROMPT_CYAN="$(tput setaf 6)"
_PROMPT_RESET="$(tput op)"

_prompt_virtualenv='\['"$_PROMPT_GREEN"'\]${VIRTUAL_ENV##*/}\['"$_PROMPT_RESET"'\]:'
_prompt_branch='\['"$_PROMPT_CYAN"'\]$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\['"$_PROMPT_RESET"'\]:'
_prompt_stash='\['"$_PROMPT_YELLOW"'\]$(git rev-list --walk-reflogs --count refs/stash 2>/dev/null)\['"$_PROMPT_RESET"'\]:'

export PS1="$_prompt_virtualenv$_prompt_branch$_prompt_stash"'\W\$ '
