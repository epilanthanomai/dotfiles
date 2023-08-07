let mapleader = ','

nnoremap          <leader>* :let @/="\\<" . expand("<cword>") . "\\>"<cr>:set hlsearch<cr>
nnoremap          <leader>/ :nohlsearch<cr>
nnoremap          <leader>\ :Ack! 
nnoremap          <leader><tab> :tabnext<cr>
nnoremap          <leader><C-p>b :CtrlPBuffer<cr>
nnoremap          <leader><C-p>t :CtrlPTag<cr>
nnoremap          <leader><C-]>l :tselect <C-r><C-w><cr>
nnoremap          <leader>R :source ~/.vimrc<cr>
nnoremap          <leader>Tr :silent !ctags -R .<cr><C-l>
nnoremap          <leader>TR :exec("silent !(cd '" . expand("%:h") . "'; ctags *)")<cr><C-l>
nnoremap          <leader>ag :Ack! -w <C-r><C-w><cr>
nnoremap          <leader>bb :Black<cr>
nnoremap          <leader>cc :set cursorline! cursorcolumn!<cr>
nnoremap          <leader>f8 :call Flake8()<cr>
nnoremap          <leader>gb :Git blame<cr>
nnoremap          <leader>gd :Gdiffsplit<cr>
nnoremap          <leader>gh :GitGutterStageHunk<cr>
nnoremap          <leader>gp :Git push<cr>
nnoremap          <leader>gP :Git push -f<cr>
nnoremap <silent> <leader>gs :Git<cr>
nnoremap          <leader>gv :Gitv<cr>
nnoremap          <leader>ma :make<cr>:cwindow<cr>:cc<cr>
nnoremap          <leader>sip vip:sort<cr>
nnoremap          <leader>ta :TagbarToggle<cr>
nnoremap          <leader>tf :NERDTreeFind<cr>
nnoremap          <leader>tr :NERDTreeToggle<cr>

vnoremap          <leader>so :sort<cr>
