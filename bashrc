source "$HOME/.bash_profile_lib/bootstrap.sh"

source_lib path_defs
source_lib prompt
source_lib local_defs

# NOTE: we source path_env for PATH in .profile, but pyenv below insists on
# being at the front, borking our own local paths that occasionally need to
# override it. for now we're working around that by just re-forcing our own
# priority paths to the front after it does that :/
source_lib pyenv_defs
source_lib path_env

# Some systems seem to keep nvm scripts globally, others in $NVM_DIR. Not
# sure why the difference.TODO: Find out why.
[ -s /usr/local/opt/nvm/nvm.sh ] && . /usr/local/opt/nvm/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

source_lib bootstrap_cleanup
