source "$HOME/.bash_profile_lib/bootstrap.sh"

export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LC_ALL="$LANG"

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`

source_lib path_defs
source_lib path_env

source_lib local_env

# if there are k8s configs then use them
export KUBECONFIG=$(ls -df ~/.kube/{config,*kubeconfig*} 2>/dev/null | xargs echo | tr ' ' :)

source_lib bootstrap_cleanup
