source "$HOME/.bash_profile_lib/bootstrap.sh"

source_lib path_defs
source_lib prompt
source_lib local_defs
source_lib pyenv_defs

# Some systems seem to keep nvm scripts globally, others in $NVM_DIR. Not
# sure why the difference.TODO: Find out why.
[ -s /usr/local/opt/nvm/nvm.sh ] && . /usr/local/opt/nvm/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# Configure ghcup
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

source_lib bootstrap_cleanup
