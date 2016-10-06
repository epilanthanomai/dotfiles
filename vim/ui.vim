set background=dark
set relativenumber
set hlsearch
set incsearch
set nojoinspaces

set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set list
set listchars=tab:»·,trail:·,nbsp:·

set statusline=%f
set statusline+=%(\ %y%m%)
set statusline+=%=
set statusline+=%{fugitive#statusline()}\ \ %l%V/%L\ %P
