augroup dotfiles_black
  autocmd!
  autocmd BufWritePre *.py execute ':Black'
augroup END
