" general  
filetype plugin indent on
set nocompatible
set history=50 
set hidden
set splitright
set nosplitbelow 
set nomodeline
set clipboard=unnamed 
set exrc
set secure
set keywordprg=man
set noerrorbells 
set visualbell 
set t_vb=

" saving
set autoread
set autowrite
set viminfo='10,<100,:0,%,n~/.viminfo
set sessionoptions=blank,buffers,folds,resize,slash,tabpages,winpos,winsize
set nowritebackup

" tabs
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" display
syntax on
set ruler
set nowrap
set showcmd
set showmatch
set colorcolumn=81
set cursorline
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2
set nohlsearch
set relativenumber

" movement
set whichwrap+=<,>,[,],h,l
set backspace=indent,eol,start

" searching
set ignorecase
set smartcase
set incsearch

" completion
set suffixes=.bak,~,.swp,.o
set completeopt=menuone,preview

" spelling
set spelllang=en_us
set spellfile=$HOME/.vim/spell/en.ascii.add

" ignoring
set wildignore+=.hg,.git,.svn,*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.ico,*.swf,*.ttf
set wildignore+=*.otf,*.eot,*.o,*.obj,*.exe,*.dll,*.manifest,*.spl,*.ds_store
set wildignore+=*.node,*.pyc

" custom configuration
source $HOME/.vim/plugins.vim
source $HOME/.vim/colors.vim
source $HOME/.vim/mappings.vim

" local configuration
if filereadable(expand("~/.vimlocal"))
  source $HOME/.vimlocal
endif
