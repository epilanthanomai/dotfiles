if command -v pyenv &>/dev/null; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# local bin needs to come before pyenv shim path.
prepend_path_force node_modules/.bin:"$HOME"/.local/bin:"$HOME"/bin:"$HOME"/.cabal/bin
