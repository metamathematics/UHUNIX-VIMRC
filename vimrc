" Keep the same indent as the line you're currently on
set autoindent

" Set tab to 4 spaces, indent 4 spaces, convert tab character to white space
set tabstop=4
set shiftwidth=4
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
inoremap {} {}<left>
inoremap {<CR> {<CR><CR>}<ESC><UP>i<TAB>
inoremap /*<TAB> /*  */<left><left><left>

" The main function
inoremap main<CR> int main()<CR>{<CR><CR>}<ESC><UP>i<TAB>

" The main function with args
inoremap main-args<CR> int main(int arc, char *argv[])<CR>{<CR><CR>}<ESC><UP>i<TAB>
