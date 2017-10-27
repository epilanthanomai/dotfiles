let mapleader = ','

nnoremap <leader>* :let @/="\\<" . expand("<cword>") . "\\>"<cr>:set hlsearch<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader><tab> :tabnext<cr>
nnoremap <leader>f8 :call Flake8()<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gn :GitGutterNextHunk<cr>
nnoremap <leader>gp :GitGutterPrevHunk<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv<cr>
nnoremap <leader>sip vip:sort<cr>
nnoremap <leader>tf :NERDTreeFind<cr>
nnoremap <leader>tr :NERDTreeToggle<cr>

vnoremap <leader>so :sort<cr>
