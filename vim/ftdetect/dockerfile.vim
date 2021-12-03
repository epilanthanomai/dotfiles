augroup dotfiles_ftdetect_dockerfile
  autocmd!
  autocmd BufNewFile,BufRead *.Dockerfile set filetype=Dockerfile
  autocmd BufNewFile,BufRead Dockerfile.* set filetype=Dockerfile
augroup END
