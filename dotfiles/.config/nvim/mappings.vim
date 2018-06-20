" vim: set fdm=marker fmr={{{,}}} fdl=0 :

" Leader Maps {{{

" quit all, no questions,
" unsaved buffers will be ditched
nnoremap <leader>Qqq :qall!<cr>
" write all, no questions
nnoremap <leader>WW :wall!<cr>
" quit all, safely
nnoremap <leader>QQ :qall<cr>
" edit vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>sv :so $MYVIMRC<cr>
" distraction free mode toggle
nnoremap <leader>G :Goyo<cr>
" FZF most recent commands
nnoremap <leader>c :call fzf#vim#command_history()<cr>
" FZF most recently used files with mini preview
nnoremap <leader>u :call fzf#vim#history(fzf#vim#with_preview('right'))<cr>
" FZF git files list +untracked -gitignored +others
nnoremap <leader>f :GFiles --others --exclude-standard --cached<cr>
" FZF cwd files list
nnoremap <leader>F :Files<cr>
" FZF buffer list
nnoremap <leader>b :Buffers<cr>
" FZF all commands list
nnoremap <leader>C :Commands<cr>
" remove highlight AND close preview window
nnoremap <silent> <leader>, :nohl<cr>:pclose<cr>
" go to previously visited buffer
nnoremap <leader><leader> <c-^>
" quit 
nnoremap <silent> <leader>q :q<cr>
" buffer delete
nnoremap <silent> <leader>d :bd<cr>
" write
nnoremap <leader>w :write<cr>
" focus current window only, hide others
nnoremap <leader>o :only<cr>
" show full file path
nnoremap <leader>p :echo expand('%')<cr>
" TODO yank relative file path
nnoremap <leader>pp :echo expand('%')<cr>
" TODO yank full file path
nnoremap <leader>pp :echo expand('%')<cr>

" }}}
" Local Leader Maps {{{

" switch cursor accoss parentasies
nnoremap <localleader><localleader> %

" }}}
" Just Maps {{{

" function that lists *.mcmd files, to search thru them descriptions
nnoremap <c-p> :call ListMyCommands()<cr>
" tab to toggle one fold
nnoremap <tab> za
" shift-tab to focus on one fold, close others
nnoremap <s-tab> zMza
" yank to the end of line (Y is alias of yy)
nnoremap Y y$
" creates a markers when performing jumps larger than 5 (use <c-o> to move jumplist)
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'
" cheap move across splits (alt+<hjkl>) set left alt to be esc+ at iterm2 profile keys
nnoremap <a-l> <c-w>l
nnoremap <a-k> <c-w>k
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
" duplicate line below/above
nnoremap <a-d> yyp
nnoremap <a-D> yyP
" it's an ex mode hotkey, not for me
nnoremap Q <nop>
" jump to bottom and center for me
nnoremap G Gzz

" }}}
" Terminal Mappings {{{
"
" cheap move across splits support
tnoremap <a-h> <c-\><c-n><c-w><c-h>
tnoremap <a-j> <c-\><c-n><c-w><c-j>
tnoremap <a-k> <c-\><c-n><c-w><c-k>
tnoremap <a-l> <c-\><c-n><c-w><c-l>
"
" }}}
" Function keys F1-42 {{{
"
nnoremap <F1> :NERDTreeToggle<cr>
nnoremap <F2> :GundoToggle<cr>
"
" }}}

