set background=dark
set relativenumber
set hlsearch
set incsearch
set nojoinspaces
set textwidth=76
set nowrap

set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set list
set listchars=tab:-·,trail:·,nbsp:·
set backspace=indent,eol,start

set statusline=%f
set statusline+=%(\ %y%m%)
set statusline+=%=
set statusline+=%{fugitive#statusline()}
set statusline+=\ \ %l/%L,%c%V\ %P

highlight CursorLine cterm=NONE ctermbg=233  " gray18
highlight CursorColumn cterm=NONE ctermbg=233  " gray18
highlight Folded cterm=NONE ctermbg=0 " black
set cursorline
set cursorcolumn
