let mapleader = ','

nnoremap          <leader>* :let @/="\\<" . expand("<cword>") . "\\>"<cr>:set hlsearch<cr>
nnoremap          <leader>/ :nohlsearch<cr>
nnoremap          <leader>\ :Ack! 
nnoremap          <leader><tab> :tabnext<cr>
nnoremap          <leader><C-p>b :CtrlPBuffer<cr>
nnoremap          <leader><C-p>t :CtrlPTag<cr>
nnoremap          <leader><C-]>l :tselect <C-r><C-w><cr>
nnoremap          <leader>Tr :silent !ctags -R .<cr><C-l>
nnoremap          <leader>TR :exec("silent !(cd '" . expand("%:h") . "'; ctags *)")<cr><C-l>
nnoremap          <leader>ag :Ack! -w <C-r><C-w><cr>
nnoremap          <leader>bb :Black<cr>
nnoremap          <leader>cc :set cursorline! cursorcolumn!<cr>
nnoremap          <leader>f8 :call Flake8()<cr>
nnoremap          <leader>gb :Gblame<cr>
nnoremap          <leader>gd :Gdiff<cr>
nnoremap          <leader>gh :GitGutterStageHunk<cr>
nnoremap          <leader>gn :GitGutterNextHunk<cr>
nnoremap          <leader>gp :GitGutterPrevHunk<cr>
nnoremap <silent> <leader>gs :Git<cr>
nnoremap          <leader>gv :Gitv<cr>
nnoremap          <leader>R :source ~/.vimrc<cr>
nnoremap          <leader>sip vip:sort<cr>
nnoremap          <leader>ta :TagbarToggle<cr>
nnoremap          <leader>tf :NERDTreeFind<cr>
nnoremap          <leader>tr :NERDTreeToggle<cr>

vnoremap          <leader>so :sort<cr>
