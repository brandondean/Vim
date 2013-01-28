set guifont=Droid\ Sans\ Mono:h11

set visualbell
set notimeout
set showcmd
"set clipboard+=unnamed " share OS X clipboard

set backspace=indent
set backspace+=eol
set backspace+=start

set expandtab       " use them soft tabs 
set tabstop=2       " real humens only need two spaces 
set autoindent
set smarttab
set shiftwidth=2    " >>, << "
set textwidth=79

set number

set wildmenu
set wildignore=*.gif,*.png,*.jpg,*.pyc
set wildmode=list:longest

set list
set listchars+=trail:~   " don't be wanting no trailling spaces
set listchars+=tab:>-    " keep tabs out please!

set showmatch
set hidden

set splitright
set splitbelow

set scrolloff=5
set cursorline

set statusline=%F%m%r%h%w[%L][%{&ff}][%04l,%04v]
set statusline+=%{fugitive#statusline()}
set laststatus=2

set incsearch

set autoread

set swapfile
set directory=~/.vim-tmp
set backupdir=~/.vim-tmp

let g:alternateExtensions_m = "h"
let g:alternateExtensions_h = "m"

set autowriteall
autocmd BufLeave,FocusLost * silent! wall
