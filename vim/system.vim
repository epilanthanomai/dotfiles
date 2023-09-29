" tagbar uses updatetime for visual updates, and the 4s default feels super
" sluggish.
set updatetime=1000

set wildignore+=*/node_modules/*
set wildignore+=*.js.map
set wildignore+=*.lock
set wildignore+=*.pyc
set wildignore+=*.temp
set wildignore+=tags
set wildignore+=tags.*
set wildignore+=*/*.egg-info/*

set spell
set spellfile=~/.local/vim-spell/personal.utf-8.add
set spelllang=en_us

filetype on
filetype plugin on
filetype indent on
