" Keep the same indent as the line you're currently on
set autoindent

" Set tab and indent to 4 spaces
set tabstop=4
set shiftwidth=4

" If file is not Makefile, convert tab character to white space
let _curfile = expand("%:t")
if _curfile =~ "Makefile"
    set noexpandtab
else
    set expandtab
endif

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
inoremap main<CR> int main(int argc, char *argv[])<CR>{<CR><CR>}<ESC><UP>i<TAB>
