" set the leader key
let mapleader=','

" omnicompletion helpers
inoremap <c-space> <c-x><c-o>
imap <c-@> <c-space>
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 

" snippet handling 
" these mappings are in after/plugin/snipmate.vim

" toggles search highlighting
nnoremap <f1> :set hlsearch! hlsearch?<cr>
inoremap <f1> <esc>:set hlsearch! hlsearch?<cr>

" toggles spell check
nnoremap <f2> :set spell! spell?<cr>
inoremap <f2> <esc>:set spell! spell?<cr>

" buffer management
nnoremap <c-n> :Scratch<cr>
nnoremap <c-left> :BufSurfBack<cr>
nnoremap <c-right> :BufSurfForward<cr>

" self explanatory
nmap <space> zz

" smart delete to end of previous line 
nnoremap <c-k> :silent! s/^\s\+\*\/\?//<cr>^:silent! s/\s*//<cr>i<bs><esc>$
inoremap <c-k> <esc>:silent! s/^\s\+\*\/\?//<cr>^:silent! s/\s*//<cr>i<bs><esc>$a

" moving lines up and down
nnoremap <c-down> :m+<cr>==
nnoremap <c-up> :m-2<cr>==
inoremap <c-down> <esc>:m+<cr>==gi
inoremap <c-up> <esc>:m-2<cr>==gi
vnoremap <c-down> :m'>+<cr>gv=gv
vnoremap <c-up> :m-2<cr>gv=gv

" window resizing (height)
nnoremap <down> 10<c-w>+
nnoremap <up> 10<c-w>-
nnoremap <c-down> <c-w>_
nnoremap <c-up> <c-w>=

" window resizing (width)
nnoremap <left> <esc>:vertical resize -25<cr>
nnoremap <right> <esc>:vertical resize +25<cr>
nnoremap <c-left> <esc>:vertical resize -5<cr>
nnoremap <c-right> <esc>:vertical resize +5<cr>

" window navigation
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>

" tag management
nnoremap <c-p> :TlistToggle<cr>
nnoremap <c-\> :vsp <cr>:exec("tag ".expand("<cword>"))<cr>

" folding
vnoremap f :fold<cr>
vnoremap ff :foldopen<cr>

