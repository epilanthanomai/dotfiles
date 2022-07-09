source "$HOME/.bash_profile_lib/bootstrap.sh"

export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export PIPENV_VENV_IN_PROJECT=1
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LC_ALL="$LANG"

# NOTE: it would be better if we could support querying colors from the
# terminal, but we don't seem to have that universally yet.
# SEE https://unix.stackexchange.com/questions/245378/common-environment-variable-to-set-dark-or-light-terminal-background
export COLORFGBG='15;0'

# run os-specific scripts
source_lib `uname -o 2>/dev/null`
source_lib `uname -s 2>/dev/null`

source_lib path_defs
source_lib pyenv_env
source_lib path_env

source_lib local_env

# if there are k8s configs then use them
export KUBECONFIG=$(ls -df ~/.kube/{config,*kubeconfig*} 2>/dev/null | xargs echo | tr ' ' :)

source_lib bootstrap_cleanup
