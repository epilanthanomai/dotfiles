let mapleader = ','

nnoremap <leader><tab> :tabnext<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv<cr>
nnoremap <leader>sip vip:sort<cr>
nnoremap <leader>tr :NERDTreeToggle<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>* :let @/="\\<" . expand("<cword>") . "\\>"<cr>:set hlsearch<cr>

vnoremap <leader>so :sort<cr>
