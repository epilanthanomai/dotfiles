set background=dark
set number
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
highlight CursorLineNr cterm=NONE ctermfg=11 ctermbg=NONE  " yellow
highlight CursorColumn cterm=NONE ctermbg=233  " gray18
highlight Folded cterm=NONE ctermfg=166 ctermbg=NONE  " rust / transparent
highlight LineNr cterm=NONE ctermfg=100 ctermbg=NONE  " dark yellow
highlight Todo cterm=NONE ctermfg=9 ctermbg=NONE  " red
set cursorline
set cursorcolumn
