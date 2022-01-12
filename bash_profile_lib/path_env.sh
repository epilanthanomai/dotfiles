# NOTE: prepend means these end up reversed in the actual constructed PATH
while read _path; do
  prepend_path_force "$_path"
done <<-EOF
  $HOME/.cargo/bin
  $HOME/.npm-packages/bin
  $HOME/.ghcup/bin
  $HOME/.cabal/bin
  $HOME/bin
  $HOME/.local/bin
  node_modules/.bin
  .local/bin
EOF
