set background=dark
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

set title
set titlestring=vim:%{mode()}:%F
set t_ts=]2; t_fs=\\

set statusline=%f
set statusline+=%(\ %y%m%)
set statusline+=%=
set statusline+=%{fugitive#statusline()}
set statusline+=\ \ %l/%L,%c%V\ %P

highlight CursorColumn cterm=NONE ctermbg=233  " gray18
highlight CursorLine cterm=NONE ctermbg=233  " gray18
highlight CursorLineNr cterm=NONE ctermfg=11 ctermbg=NONE  " yellow
highlight Folded cterm=NONE ctermfg=136 ctermbg=NONE  " rust / transparent
highlight LineNr cterm=NONE ctermfg=100 ctermbg=NONE  " dark yellow
highlight NonText cterm=NONE ctermfg=8  " dark gray
highlight SignColumn ctermbg=NONE
highlight StatusLine ctermfg=8 ctermbg=10  " dark gray / green (reversed)
highlight StatusLineNC ctermfg=8 ctermbg=7  " dark gray / light gray (reversed)
highlight Todo cterm=NONE ctermfg=9 ctermbg=NONE  " red
highlight VertSplit ctermbg=8 ctermfg=0  " dark gray / black  (reversed)
highlight diffFile ctermfg=202  " medium orange

set cursorline
set cursorcolumn
set signcolumn=yes

let g:xml_syntax_folding=1

augroup NumberActiveWindow
  autocmd!
  autocmd BufEnter * set number relativenumber
  autocmd BufLeave * set nonumber norelativenumber
augroup END
