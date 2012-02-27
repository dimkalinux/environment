" set the leader key
let mapleader=','

" open the current ctag in a new tab
map <c-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

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
nnoremap <left> <c-w><c-h>
nnoremap <right> <c-w><c-l>

" self explanatory
nmap <space> zz

" smart delete to end of previous line 
nnoremap <c-h> ^:s/\s*//<cr>i<bs><esc>
inoremap <c-h> <esc>^:s/\s*//<cr>i<bs>

" moving lines up and down
nnoremap <c-down> :m+<cr>==
nnoremap <c-up> :m-2<cr>==
inoremap <c-down> <esc>:m+<cr>==gi
inoremap <c-up> <esc>:m-2<cr>==gi
vnoremap <c-down> :m'>+<cr>gv=gv
vnoremap <c-up> :m-2<cr>gv=gv

" resize window
nnoremap = 10<c-w>+
nnoremap - 10<c-w>-
nnoremap _ <c-w>_<esc>
nnoremap + <c-w>=

" tag list
nnoremap <c-p> :TlistToggle<cr>

" scroll window
nnoremap <c-j> 
nnoremap <c-k> 

