function! martin#functions#substitute(pattern, replacement, flags) abort
  let l:number=1
  for l:line in getline(1, '$')
    call setline(l:number, substitute(l:line, a:pattern, a:replacement, a:flags))
    let l:number=l:number + 1
  endfor
endfunction

" http://stackoverflow.com/a/39348498/2103996
function! martin#functions#clearregisters() abort
  let l:regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for l:reg in l:regs
    call setreg(l:reg, [])
  endfor
endfunction

" Like :echoerr, but without the stack trace.
function! martin#functions#echoerr(msg) abort
  try
    echohl ErrorMsg
    echomsg a:msg
  finally
    echohl None
  endtry
endfunction

let s:togglecenteredcursor=&scrolloff
" Moves hjkl bindings around
function! martin#functions#togglecenteredcursor() abort
  if &scrolloff == 1000
    let &scrolloff=s:togglecenteredcursor
    echom "back to default scrolloff"
  else
    let s:togglecenteredcursor=&scrolloff
    let &scrolloff=1000
    echom "centered 'j','h','k','l' are in use"
  endif
endfunction

" Switch to plaintext mode with: call martin#functions#plaintext()
function! martin#functions#plaintext() abort
  if has('conceal')
    let b:indentLine_ConcealOptionSet=1 " Don't let indentLine overwrite us.
    setlocal concealcursor=nc
  endif
  setlocal nolist
  if has('syntax')
    setlocal spell
    setlocal spelllang=en,es
  endif
  setlocal textwidth=0
  setlocal wrap
  setlocal wrapmargin=0

  nnoremap <buffer> j gj
  nnoremap <buffer> k gk

  " Ideally would keep 'list' set, and restrict 'listchars' to just show
  " whitespace errors, but 'listchars' is global and I don't want to go through
  " the hassle of saving and restoring.
  if has('autocmd')
    autocmd BufWinEnter <buffer> match Error /\s\+$/
    autocmd InsertEnter <buffer> match Error /\s\+\%#\@<!$/
    autocmd InsertLeave <buffer> match Error /\s\+$/
    autocmd BufWinLeave <buffer> call clearmatches()
  endif
endfunction

" Zap trailing whitespace.
function! martin#mappings#leader#zap() abort
  call martin#functions#substitute('\s\+$', '', '')
endfunction

