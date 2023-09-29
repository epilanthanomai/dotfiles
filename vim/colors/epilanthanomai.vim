runtime colors/default.vim

" cursor location
highlight CursorColumn cterm=NONE ctermbg=233  " gray18
highlight CursorLine cterm=NONE ctermbg=233  " gray18

" ui elements
highlight LineNr cterm=NONE ctermfg=100 ctermbg=NONE  " dark yellow
highlight CursorLineNr cterm=NONE ctermfg=11 ctermbg=NONE  " yellow
highlight SignColumn ctermbg=NONE
highlight VertSplit ctermbg=8 ctermfg=0  " dark gray / black  (reversed)
highlight SpecialKey ctermfg=21  " dark blue (used by listchars)
highlight StatusLine ctermfg=8 ctermbg=10  " dark gray / green (reversed)
highlight StatusLineNC ctermfg=8 ctermbg=7  " dark gray / light gray (reversed)

" text blocks
highlight Comment cterm=NONE ctermfg=12  " pale blue
highlight DiffAdd ctermbg=27  " dark blue
highlight DiffDelete ctermfg=241 ctermbg=18  " gray / dark blue
highlight DiffChange ctermbg=18  " dark blue
highlight DiffText cterm=bold ctermbg=89  " plum
highlight Folded cterm=NONE ctermfg=136 ctermbg=NONE  " rust / transparent

" inline syntax
highlight Constant cterm=NONE ctermfg=213  " light magenta
highlight NonText cterm=NONE ctermfg=8  " dark gray
highlight Search ctermbg=20 ctermfg=226 term=bold  " pale yellow / dark blue
highlight SpellBad ctermbg=NONE ctermfg=9  " bright red
highlight SpellCap ctermbg=NONE ctermfg=34  " dark green
highlight SpellLocal ctermbg=NONE ctermfg=75  " mid blue-gray
highlight Todo cterm=NONE ctermfg=9 ctermbg=NONE  " red

highlight diffFile ctermfg=202  " medium orange

let colors_name = "epilanthanomai"
