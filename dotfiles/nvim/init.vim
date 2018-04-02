" vim: set fdm=marker fmr={{{,}}} fdl=0 :

scriptencoding utf-8

" << PLUGINS >> {{{

if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd!
        autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" Job control
" Execute :PythonSupportInitPython2 and :PythonSupportInitPython3 after you have installed this plugin.
" Plug 'roxma/python-support.nvim' " automatically sets up python stuff
" Plug 'neomake/neomake'
" :let &hlsearch=1 | echo 
" 

"Pope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Php
Plug 'alvan/vim-php-manual' " shows beautiful php.net doc in help window
Plug 'fenetikm/phpfolding.vim' "php folding
" completion php
Plug 'roxma/nvim-completion-manager'
Plug 'phpactor/phpactor' ,  {'do': 'composer install'}
Plug 'roxma/ncm-phpactor'

Plug 'mattn/emmet-vim'
"
" Search, Fuzzy Finding
Plug 'junegunn/fzf' "or refer a sys binary here
Plug 'junegunn/fzf.vim' "fuzzy finder stuff
Plug 'wincent/loupe' "nicer search highlighting
Plug 'wincent/ferret' " within files search

"  End Search, Fuzzy Finding
" Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim' "distraction free mode
Plug 'vim-airline/vim-airline' "tabline, statusline
Plug 'vim-airline/vim-airline-themes' "deus theme s there too
"syntax themes
Plug 'ajmwagar/vim-deus'
Plug 'mhartington/oceanic-next'
Plug 'KeitaNakamura/neodark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dikiaap/minimalist'
Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale' " syntax checker
"
call plug#end()
"
" }}}
" Emmet customization {{{

" Remapping <C-y>, just doesn't cut it.
function! s:expand_html_tab()
        " try to determine if we're within quotes or tags.
        " if so, assume we're in an emmet fill area.
        let line = getline('.')
        if col('.') < len(line)
                let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
                if len(line) >= 2
                        return "\<C-n>"
                endif
        endif
        " expand anything emmet thinks is expandable.
        if emmet#isExpandable()
                return emmet#expandAbbrIntelligent("\<tab>")
                " return "\<C-y>,"
        endif
        " return a regular tab character
        return "\<tab>"
endfunction
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
let g:user_emmet_mode='a'
let g:user_emmet_complete_tag = 0
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

"}}}
" ALOT {{{

" Remember cursor pos and folds across sessions
autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ 	exe "normal! g'\"" |
        \ endif
autocmd BufRead * normal zz

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

nnoremap <s-tab> zMza

let g:phpactorPhpBin = "/usr/local/bin/php"
let g:deoplete#enable_at_startup = 1

"}}}
" General Options: {{{

let g:netrw_home=$HOME.'/.cache'
let mapleader="\<Space>"
let maplocalleader = "\\"
set expandtab "always use spaces instead of tabs
set mouse=a "ckicl
set number "show line numbers
set relativenumber "set to relative number mode
set helpheight=40 ""
set hidden "Required for operations modifying multiple buffers like rename.
set scrolloff=5
set sidescrolloff=5
set clipboard=unnamed
set nowrap
set termguicolors
set noswapfile "vim will never chash on you
let g:python3_host_prog = '/usr/local/bin/python3' " set python3 host program location
set virtualedit=block " allow cursor to move where there is no text in visual block mode
set lazyredraw " don't bother updating screen during macro playback
set foldtext=martin#settings#foldtext() "overrides default fold design
set inccommand=nosplit "auto preview for stuff like :%s/re/place/
set synmaxcol=200 "don't bother syntax highlighting long lines

"}}}
" Design, theming {{{

" almost default but using horizonal cursor instead of block
set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25,r-cr-o:hor20
" http://xahlee.info/comp/unicode_drawing_shapes.html
set list " display unprintable characters
set listchars=nbsp:⦸, " hazard character  
set listchars+=tab:⇥─, " tab example	 here
set listchars+=extends:⦢, " if nowrap overflows rigth
set listchars+=precedes:⦑, " if nowrap overflows left
set listchars+=space:⋅, " U+22C5 dot operator
set listchars+=trail:• " bullet (U+2022, UTF-8: E2 80 A2)
set listchars+=eol:¬

" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:✗,space:·

syntax on
colorscheme deus

" }}}
" Leader Maps {{{

" edit vimrc in vertical split
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" source vimrc
nnoremap <leader>sv :so ~/.config/nvim/init.vim<cr>
" distraction free mode toggle
nnoremap <leader>G :Goyo<cr>
" FZF most recent commands
nnoremap <leader>c :call fzf#vim#command_history()<cr>
" FZF most recently used files with mini preview
nnoremap <leader>u :call fzf#vim#history(fzf#vim#with_preview('right'))<cr>
" FZF cwd files list
nnoremap <leader>f :Files<cr>
" FZF buffer list
nnoremap <leader>b :Buffers<cr>
" FZF all commands list
nnoremap <leader>C :Commands<cr>
" remove highlight
nnoremap <silent> <leader>, :nohl<cr>
" go to previously visited buffer
nnoremap <leader><leader> <c-^>
" save and exit buffer
nnoremap <leader>x :xit<cr>
" quit buffer (buffer-delete)
nnoremap <leader>q :bd<cr>
" write buffer
nnoremap <leader>w :write<cr>
" focus current window only, hide others
nnoremap <leader>o :only<cr>
" trim trailing whitespace
nnoremap <silent> <leader>zz :call martin#functions#substitute('\s\+$', '', '')<cr>
" show full file path
nnoremap <leader>p :echo expand('%')<cr>
" show full file path
nnoremap <leader>pp :echo expand('%')<cr>

" }}}
" Local Leader Maps {{{

" switch cursor accoss parentasies
nnoremap <localleader><localleader> %
" toggle mode that keeps cursor centered
nnoremap <localleader>c :call martin#functions#togglecenteredcursor()<cr>

" }}}
" Just Maps {{{

" tab to toggle one fold
nnoremap <tab> za
" shift-tab to focus on one fold, close others
nnoremap <s-tab> zMza
" yank to the end of line (Y is alias of yy)
nnoremap Y y$
" creates a markers when performing jumps larger than 5 (use <c-o> to move jumplist)
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'
" cheap move across splits
nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
" it's an ex mode hotkey
nnoremap Q <nop>

" }}}

let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
