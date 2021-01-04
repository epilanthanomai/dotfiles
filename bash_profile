source $HOME/.profile
if [[ $- == *i* ]]; then source $HOME/.bashrc; fi
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env
