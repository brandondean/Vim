let mapleader = ","

" ------- Pathogen stuff --------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible 
filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace a more flexible
set clipboard+=unnamed " share OS X clipboard
set hidden " you can change buffers without saving
set iskeyword+=_,$,@,%,# " none of these are word dividers 
set mouse=a " use mouse everywhere
set noerrorbells  visualbell t_vb= " don't make noise
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
set wildmenu " turn on command line completion wild style
" ignore these list file extensions
set wildignore+=*.o,*.obj,*.bak,*.exe,*.pyc,
                \*.jpg,*.gif,*.png,*.class,*.class,*/ENV/*
set wildmode=list:longest " turn on wild mode huge list
set noerrorbells "turn off audio bells

" Tab settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set cursorline " highlight current line
set incsearch " BUT do highlight as you type you 
              " search phrase
set laststatus=2 " always show the status line
set listchars=tab:>-,trail:- " show tabs and trailing 
set matchtime=15 " how many tenths of a second to blink 
                " matching brackets for
set nostartofline " leave my cursor where it was
set number " turn on line numbers
set shortmess=aOstT " shortens messages to avoid 
                    " 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets

set statusline=%F%m%r%h%w[%L][%{&ff}][%04l,%04v]


" Search
set ignorecase 
set infercase 
set softtabstop=2



if has("gui_running")
   colorscheme Tomorrow-Night
   set guifont=Droid\ Sans\ Mono:h17
   set guioptions=ce 
   "              ||
   "              |+-- use simple dialogs rather than pop-ups
   "              +  use GUI tabs, not console style tabs
else
  colorscheme mustang
  syntax on
endif

" Keybinding {
  " switch to the right window
  map <C-H> <C-W>h 
  " switch to the left window
  map <C-L> <C-W>l 
  " switch to the bottom window
  map <C-J> <C-W>j 
  " switch to the top window
  map <C-K> <C-W>k 
  " rebuild tag list
  map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
  imap jj <ESC>
  
" }

