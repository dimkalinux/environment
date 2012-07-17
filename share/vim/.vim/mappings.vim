" set the leader key
let mapleader=','

" document handling
nnoremap <c-s> <esc>:w<cr>

" omnicompletion helpers
inoremap <c-c> <c-x><c-o>
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
nnoremap <c-n> <esc>:tabnew<cr>
nnoremap <c-left> gT<cr>
nnoremap <c-right> gt<cr>
nnoremap ) gt<cr>
nnoremap ( gT<cr>

" self explanatory
nmap <space> zz

" smart delete to end of previous line 
nnoremap <c-k> :silent! s/^\s\+\*\/\?//<cr>k:silent! s/\s*$//<cr>j^:silent! s/\s*//<cr>i<bs> <esc>$

" window resizing (height)
nnoremap <down> 4<c-w>+
nnoremap <up> 4<c-w>-
nnoremap <c-down> <c-w>_
nnoremap <c-up> <c-w>=

" window resizing (width)
nnoremap <left> <esc>:vertical resize -10<cr>
nnoremap <right> <esc>:vertical resize +10<cr>

" tag management
nnoremap <c-p> :TlistToggle<cr>
nnoremap <c-\> :vsp <cr>:exec("tag ".expand("<cword>"))<cr>
nnoremap <c-t> <c-w><c-]><c-w>T

" folding
vnoremap f :fold<cr>
vnoremap ff :foldopen<cr>
