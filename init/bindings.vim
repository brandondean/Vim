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
imap jj <ESC> " better exiting of insert

"map ,d :NERDTreeToggle<CR>

map <leader>l :ListMethods
map <leader>s :Ack 
nmap ; :

