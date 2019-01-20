" if ackprg isn't set before plugins.vim loads ack.vim, ack will exit
if executable('ag')
  let g:ackprg='ag --vimgrep'
endif
