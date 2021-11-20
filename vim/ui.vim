set background=dark
set hlsearch
set incsearch
set nowrapscan
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
set laststatus=2  " always show status line

set cursorline
set cursorcolumn
set signcolumn=yes

set foldmethod=syntax
let g:xml_syntax_folding=1

colorscheme epilanthanomai

augroup NumberActiveWindow
  autocmd!
  autocmd BufEnter * set number relativenumber
  autocmd BufLeave * set nonumber norelativenumber
augroup END
