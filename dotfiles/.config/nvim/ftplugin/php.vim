setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal autoindent
setlocal copyindent
setlocal smarttab
setlocal iskeyword+=-
setlocal iskeyword+=_

" packadd nvim-completion-manager

" let save_pos = getpos(".")
"    normal! 6|r$                " replaces the 6th caracter in line with a $
"    call setpos(".", save_pos)
inoremap <buffer> ;; <esc>A;<esc>
" nnoremap <buffer> <leader>u :call phpactor#UseAdd()<cr>
" set tags+=.git/tags,.git/tags.vendors

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

if filereadable(expand('%'))
  " on reading php file ensure if there is strict type
else
  " the file is new, we stub out opening tag and strict type
  call setline('1', '<?php')
  call setline('2', 'declare(strict_types=1);')
  call setline('3', '') " free line
  call setline('4', '') " free line
  normal 4G
endif
