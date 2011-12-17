let mapleader = ","

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
let g:CommandTMaxHeight = 10

filetype plugin indent on " load filetype plugins/indent settings
set backspace=indent,eol,start " make backspace a more flexible
set clipboard+=unnamed " share OS X clipboard
set hidden " you can change buffers without saving
set iskeyword+=_,$,@,%,# " none of these are word dividers 
set mouse=a " use mouse everywhere
set noerrorbells  visualbell t_vb= " don't make noise
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
"             | | | | | | | | |
"             | | | | | | | | +-- "]" Insert and Replace
"             | | | | | | | +-- "[" Insert and Replace
"             | | | | | | +-- "~" Normal
"             | | | | | +-- <Right> Normal and Visual
"             | | | | +-- <Left> Normal and Visual
"             | | | +-- "l" Normal and Visual (not recommended)
"             | | +-- "h" Normal and Visual (not recommended)
"             | +-- <Space> Normal and Visual
"             +-- <BS> Normal and Visual
set wildmenu " turn on command line completion wild style
" ignore these list file extensions
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,
                \*.jpg,*.gif,*.png
set wildmode=list:longest " turn on wild mode huge list
set noerrorbells "turn off audio bells
set vb

" Tab settings
set expandtab
set softtabstop=2
set ts=2
set tabstop=2
set autoindent
set list

set cursorline " highlight current line
set incsearch " BUT do highlight as you type you 
              " search phrase
set laststatus=2 " always show the status line
set listchars=tab:>-,trail:- " show tabs and trailing 
set matchtime=5 " how many tenths of a second to blink 
                " matching brackets for
set nostartofline " leave my cursor where it was
set number " turn on line numbers
set shortmess=aOstT " shortens messages to avoid 
                    " 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size
set statusline=%F%m%r%h%w[%L][%{&ff}][%04l,%04v]


" Search
set ignorecase " case insensitive by default
set infercase " case inferred by default
set smartcase " if there are caps, go case-sensitive
                  " >>, << and stuff like that
set softtabstop=2 " when hitting tab or backspace, how many spaces 
                  "should a tab be (see expandtab)



" GUI Settings {
 if has("gui_running")
     " Basics {
     colorscheme solarized 
         set guifont=Inconsolata:h11 " My favorite font
         set guioptions=ce 
         "              ||
         "              |+-- use simple dialogs rather than pop-ups
         "              +  use GUI tabs, not console style tabs
     " }
 
     " }
 endif
" }

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
  
" }

