" Keep the same indent as the line you're currently on
set autoindent

" Convert tab to spaces. 1 tab = 4 spaces
set tabstop=4
set shiftwidth=2
set expandtab

" Stop certain movements from always going to the first character of a line
set nostartofline

" Display line numbers
set number

" Pressing Ctrl-N twice in normal mode toggles between showing and hiding line
" numbers
nmap <C-N><C-N> :set invnumber<CR>

" Automatic closing characters
" To avoid this behavoir, type Ctrl-V before typing the mapped char
inoremap "" ""<left>
inoremap '' ''<left>
inoremap ( ()<left>
inoremap () ()
inoremap (; ();<left><left>
inoremap [ []<left>
inoremap [] []
inoremap { {}<left>
inoremap {<CR> {<CR><CR>}<ESC>ki<TAB>
inoremap /*<TAB> /*  */<left><left><left>
