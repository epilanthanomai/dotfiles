pack_clone_root=.vim-local/pack/dotfiles/start
pack_sources_path=.vim/pack-sources

while read source; do
  source_base="${source##*/}"
  destination_base="${source_base%.vim}"
  destination_path="$pack_clone_root/$destination_base"
  destination_full_path="$target/$destination_path"

  if [ -d "$destination_full_path" ]; then
    echo "skipping $source: $destination_path exists" >&2
    continue
  fi

  git clone "$source" "$destination_full_path"
done < "$target/$pack_sources_path"
