let mapleader = ','

nnoremap <leader>* :let @/="\\<" . expand("<cword>") . "\\>"<cr>:set hlsearch<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader><tab> :tabnext<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv<cr>
nnoremap <leader>sip vip:sort<cr>
nnoremap <leader>tr :NERDTreeToggle<cr>

vnoremap <leader>so :sort<cr>
