function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction


autocmd BufWritePre *.py,*.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.feature call StripTrailingWhitespace()

autocmd BufRead,BufNewFile *.json set filetype=javascript
autocmd BufRead,BufNewFile *.jbuilder set filetype=javascript
autocmd BufRead,BufNewFile *.podspec set filetype=ruby

