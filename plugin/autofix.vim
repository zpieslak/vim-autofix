" Description: autofix.vim - Run linter for a current file
" Author:      Zbigniew Pieślak <http://codegyver.com/>
" License:     The MIT License (MIT)

if exists("g:loaded_autofix") || &cp
  finish
endif
let g:loaded_autofix = 1

augroup autofix " {{{1
  autocmd!
  autocmd FileType ruby
    \ let b:autofix_command = '!rubocop -a %'
  autocmd FileType javascript
    \ let b:autofix_command = '!eslint --fix %'
augroup END " }}}1

function! Autofix()
  if exists("b:autofix_command")
    execute 'silent w ' . b:autofix_command
  else
    echom 'This file type is not supported'
  endif
endfunction

command! -nargs=* Autofix call Autofix()
