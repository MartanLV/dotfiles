scriptencoding utf-8

function! TrimWhiteSpace()
  :%s/\s\+$//e
endfunction

function! ReindentWholeFileAndTabsToSpaces() abort
  normal gg=G``
  retab
endfunction

function! CustomFoldText() abort
  let l:title=substitute(getline(v:foldstart), '^"\(.*\){{{$', '\1', '')
  let l:lines=v:foldend - v:foldstart + 1
  return '᚜' . l:title . '᚛᚜' . l:lines . '᚛'
endfunction

function! EditFtPluginFile() abort
  exec ":e ~/.config/nvim/ftplugin/".expand('%:e').".vim"
endfunction

function! RemoveFancyCharacters() abort
  let typo = {}
  let typo["“"] = '"'
  let typo["”"] = '"'
  let typo["‘"] = "'"
  let typo["’"] = "'"
  let typo["–"] = '--'
  let typo["—"] = '---'
  let typo["…"] = '...'
  :exe ":%s/".join(keys(typo), '\|').'/\=typo[submatch(0)]/ge'
endfunction

" http://stackoverflow.com/a/39348498/2103996
function! ClearRegisters() abort
  let l:regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for l:reg in l:regs
    call setreg(l:reg, [])
  endfor
endfunction

" Like :echoerr, but without the stack trace.
function! EchoErr(msg) abort
  try
    echohl ErrorMsg
    echomsg a:msg
  finally
    echohl None
  endtry
endfunction

let s:togglecenteredcursor=&scrolloff
function! ToggleCenteredCursor() abort
  if &scrolloff == 1000
    let &scrolloff=s:togglecenteredcursor
    echom "back to default scrolloff"
  else
    let s:togglecenteredcursor=&scrolloff
    let &scrolloff=1000
    echom "centered 'j','h','k','l' are in use"
  endif
endfunction

" insp https://github.com/fenetikm/dotfiles/tree/master/.config/nvim
function! ProcessMyCommand(l)
  let keys = split(a:l, ':\t')
  let command_parts = split(keys[0], '|')
  let command_function = split(command_parts[1], '#')

  if command_parts[0] == 'vc'
    "vim call
    execute 'call '.command_function[0]
  elseif command_parts[0] == 'op'
    " open
    execute '!open -g '.command_function[0]
  else
    "just do whatever it says
    execute command_function[0]
  endif
endfunction

function! ListMyCommands() abort
  :call fzf#run({
        \'up': '40%',
        \'sink': function('ProcessMyCommand'),
        \'source': 'cat '.$HOME.'/.config/nvim/*.mcmd 2>/dev/null'
        \})
endfunction

function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
endfunction

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
