augroup dotfiles_ftdetect_groovy
  autocmd!
  autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy
  autocmd BufNewFile,BufRead *.Jenkinsfile set filetype=groovy
  autocmd BufNewFile,BufRead Jenkinsfile.* set filetype=groovy
augroup END
