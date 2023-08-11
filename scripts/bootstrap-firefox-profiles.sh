# Find firefox profiles and add user config.
FIREFOX_PROFILE_ROOTS=(\
  .mozilla/firefox \
  "Library/Application Support/Firefox/Profiles" \
)

FIREFOX_PROFILE_NAMES=(\
  *.default \
  *.default-* \
)

for profile_root in "${FIREFOX_PROFILE_ROOTS[@]}"; do
  for profile_name in "${FIREFOX_PROFILE_NAMES[@]}"; do
    for profile in "$target/$profile_root"/$profile_name; do
      if [ -d "$profile" ]; then
        # NOTE: Firefox on MacOS refuses to load profile chrome if it's
        # symlinked :'( Rsync it in there, but symlink elsewhere
        if [ "$os" = "Darwin" ]; then
          rsync -r firefox/chrome "$profile"/
        else
          ln -sf "$root"/firefox/chrome "$profile"/
        fi
      fi
    done
  done
done
