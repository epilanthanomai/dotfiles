source "$HOME/.bash_profile_lib/bootstrap.sh"

# see PATH below in prepend_missing_path
export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LC_ALL="$LANG"

source_lib path_defs
source_lib prompt

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`

source_lib local_env
source_lib local_defs
source_lib pyenv_defs

# if there are k8s configs then use them
export KUBECONFIG=$(ls -df ~/.kube/{config,*kubeconfig*} 2>/dev/null | xargs echo | tr ' ' :)

# Some systems seem to keep nvm scripts globally, others in $NVM_DIR. Not
# sure why the difference.TODO: Find out why.
[ -s /usr/local/opt/nvm/nvm.sh ] && . /usr/local/opt/nvm/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

source_lib bootstrap_cleanup
