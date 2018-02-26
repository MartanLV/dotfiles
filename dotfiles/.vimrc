" crete colorscheme at address "http://bytefluent.com/vivify/"
" press "K" over any symbol to see docs
packadd vim-sensible
packadd terminus

nnoremap <s-tab> za

" autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" autocmd FileChangedShellPost *
"   \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
" set scrolloff=999
nnoremap L $
nnoremap H ^
" wrapped line movment
nnoremap j gj
nnoremap k gk

let mapleader="\\"
set ttimeoutlen=100 " if in terminal <Esc>O is a prefix for keycode, this helps in case you do O after <ESC>
set autowrite " :set hidden allows to switch between unsaved buffers, but this just saves them, no questions asked
" command W write " an alias coz too often I do :W instead of :w 

" neat help ":H"
" command -nargs=* -complete=help H vertical belowright help <args>
set helpheight=40 " help window takes more space

" also autocenter when going to bottom of file
"
nnoremap G Gzz 

set showcmd " visual feedback on digits pressed
set relativenumber " that's just on

" Todo Package manage
packadd vim-textmanip

" TODO setup with laravel
packadd vim-projectionist
packadd ultisnips
packadd vim-commentary
" below choose one of three TODO
packadd LineJuggler
packadd vim-unimpaired
packadd vim-textmanip

" php
" packadd nvim-yarp
" packadd vim-hug-neovim-rpc
" " packadd deoplete-padawan
" packadd padawan.php
" packadd vim-php-namespace
" packadd deoplete.nvim
" call deoplete#enable()

packadd tagbar
packadd vim-surround
packadd vim-easymotion
packadd vim-mundo
packadd vim-startify
packadd vim-gutentags

" <Leader>f{char} to move to {char}
nnoremap  <Leader>f <Plug>(easymotion-bd-f)
nnoremap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nnoremap s <Plug>(easymotion-overwin-f2)

" Move to line
nnoremap <Leader>L <Plug>(easymotion-bd-jk)
nnoremap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
nnoremap  <Leader>w <Plug>(easymotion-bd-w)
nnoremap <Leader>w <Plug>(easymotion-overwin-w)

" 100%
nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

set clipboard=unnamed " use system clipboard, yank and paste are prepended with "* (star register)
set number " line numbers
set history=1024 " history of executed commands ever, default was 50, it autocompletes on <up>, type q: in normal mode to search/edit them
set autoread " if file got changed outside vim will read it fresh
set showbreak=↪\  " escaping the space there
set noswapfile " let's crash painfully
set incsearch " highlight while type
set mouse=a " mouse at all possible modes
filetype plugin indent on " detect file type, load it's plugin file and indentation file, see help to edit/create these files
set autoindent " always set _ auto indenting on 
set backspace=indent,eol,start "allow backspacing over auto indent, line breaks, over the start of insert

" native package manager in use
" $DOTPATH/util add github.com/scrooloose/nerdtree
" add like so: `git submodule add https://github.com/itchyny/lightline.vim VIM_DOTFILES/.vim/pack/plugins/opt/lightline`
packadd lightline.vim

let g:spellconf_on=0
packadd spellconf " ~/.vim/pack/conf/opt/spellconf/plugin

packadd jellybeans.vim
syntax on
colorscheme jellybeans
let g:jellybeans_use_term_italics = 1
set noshowmode
set laststatus=2

" TODO https://github.com/t9md/vim-textmanip
" TODO https://github.com/vim-syntastic/syntastic
packadd fzf

nnoremap <silent> <Leader>f :call fzf#run({'source': 'git ls-files', 'sink': 'e'})<CR>

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

set cursorline
hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=NONE

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<CR>

