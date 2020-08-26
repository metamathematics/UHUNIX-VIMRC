" Keep the same indent as the line you're currently on
set autoindent

" Indent 4 spaces
set shiftwidth=4

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
inoremap {<CR> {<CR>}<ESC>:><CR>i<CR><ESC>:<<CR>i<up><right><right><right><right>
inoremap /*<TAB> /*  */<left><left><left>

" The main function
inoremap main<CR> int main()<CR>{<CR>}<ESC>:><CR>i<CR><ESC>:<<CR>i<up><right><right><right><right>
