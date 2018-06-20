" vim: set fdm=marker fmr={{{,}}} fdl=0 :

" General Options: {{{

" tab stuff
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent
" --
set completeopt=menu,noinsert,noselect,longest,menuone,preview
set splitbelow " if completion provides preview/info window do it at bottom
set previewheight=60 " max height of preview window
set noautochdir " this is default anyhow, but being explicit here.
let g:netrw_home=$HOME.'/.cache'
let mapleader="\<Space>"
let maplocalleader = "\\"
set expandtab "always use spaces instead of tabs
set mouse=a "ckicl always all modes srcoll
set number "show line numbers
set relativenumber "set to relative number mode
set hidden "Required for operations modifying multiple buffers like rename.
set scrolloff=5
set sidescrolloff=5
set clipboard=unnamed
set nowrap
set noswapfile "since vim will never chash on you..
let g:python3_host_prog = '/usr/local/bin/python3' " set python3 host program location
set virtualedit=block " allow cursor to move where there is no text in visual block mode
set lazyredraw " don't bother updating screen during macro playback
set foldtext=CustomFoldText()
set inccommand=nosplit "auto preview for stuff like :%s/re/place/
set synmaxcol=200 "don't bother syntax highlighting long lines
set noshowmode " cos lightline shows that already

"}}}
" Design, theming {{{

set termguicolors
" almost default but using horizonal cursor instead of block
set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25,r-cr-o:block
" http://xahlee.info/comp/unicode_drawing_shapes.html
set list " display unprintable characters
set listchars=nbsp:⦸, " hazard character  
set listchars+=tab:⇥─, " tab example	 here
set listchars+=extends:⦢, " if nowrap overflows rigth
set listchars+=precedes:⦑, " if nowrap overflows left
set listchars+=space:⋅, " U+22C5 dot operator
set listchars+=trail:• " bullet (U+2022, UTF-8: E2 80 A2)
set listchars+=eol:¬

set fillchars+=fold:┄

syntax on
colorscheme deus

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

set cursorline

" no intro window for professionals (I)
set shortmess+=I
set shortmess+=c

" }}}

