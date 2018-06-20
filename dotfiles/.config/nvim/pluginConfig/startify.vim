" else opening a file from splash screen it changes PWD
let g:startify_change_to_dir = 0

" changes pwd to closest .git if found
let g:startify_change_to_vcs_root = 0

" before leaving vim saves the loaded session
" even if explicitly started with vim -S path/to/session.vim
" also if :SLoad is used to load another session, this one will save
let g:startify_session_persistence = 1

" all the sessions
let g:startify_session_dir = '~/.cache/vim-sessions'

" iff (if and only if) this directory has file "Session.vim", it will be
" loaded
let g:startify_session_autoload = 1

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': [   'Sessions']       },
      \ { 'type': 'files',     'header': [   'MRU']            },
      \ { 'type': 'dir',       'header': [   'MRU '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': [   'Bookmarks']      },
      \ { 'type': 'commands',  'header': [   'Commands']       },
      \ ]

