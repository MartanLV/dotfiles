" vim: set fdm=marker fmr={{{,}}} fdl=0 :
scriptencoding utf-8

"" Emmet customization {{{

"" Remapping <C-y>, just doesn't cut it.
"function! s:expand_html_tab()
"    " try to determine if we're within quotes or tags.
"    " if so, assume we're in an emmet fill area.
"    let line = getline('.')
"    if col('.') < len(line)
"        let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
"        if len(line) >= 2
"            return "\<C-n>"
"        endif
"    endif
"    " expand anything emmet thinks is expandable.
"    if emmet#isExpandable()
"        return emmet#expandAbbrIntelligent("\<tab>")
"        " return "\<C-y>,"
"    endif
"    " return a regular tab character
"    return "\<tab>"
"endfunction
"" let g:user_emmet_expandabbr_key='<Tab>'
"" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
"let g:user_emmet_mode='a'
"let g:user_emmet_complete_tag = 0
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,scss EmmetInstall

""}}}

packadd minpac
so ./packages.vim
so ./settings.vim
so ./functions.vim
so ./mappings.vim

" Make sure Vim returns to the same line when you reopen a file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     execute 'normal! g`"zvzz' |
    \ endif
set viminfo^=%

let g:phpactorPhpBin = "/usr/local/bin/php"
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
let g:go_fmt_command = "goimports"
" " -------- Vdebug ---------
" let g:vdebug_options={
"       \   'debug_file': '~/vdebug.log',
"       \   'debug_file_level': 0,
"       \   'watch_window_style': 'compact',
"       \   'marker_default': '⬦',
"       \   'continuous_mode': 1,
"       \   'ide_key': '',
"       \   'break_on_open': 0,
"       \   'window_commands': {
"       \     'DebuggerStack': 'belowright new',
"       \     'DebuggerWatch': 'vertical belowright new',
"       \     'DebuggerStatus': 'belowright new'
"       \   },
"       \   'on_close': 'stop',
"       \   'path_maps': {},
"       \   'auto_start': 1,
"       \   'window_arrangement': ['DebuggerWatch', 'DebuggerStack', 'DebuggerStatus'],
"       \   'marker_closed_tree': '▸',
"       \   'background_listener': 1,
"       \   'timeout': 20,
"       \   'port': 9000,
"       \   'marker_open_tree': '▾',
"       \   'debug_window_level': 0,
"       \   'server': ''
"       \ }

" command! RunDebugger packadd vdebug | VdebugStart

" :help VdebugCommands
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_column_always = 1

let g:lightline = {}

let g:lightline.component_expand = {
            \  'linter_checking': 'lightline#ale#checking',
            \  'linter_warnings': 'lightline#ale#warnings',
            \  'linter_errors': 'lightline#ale#errors',
            \  'linter_ok': 'lightline#ale#ok',
            \ }

let g:lightline.component = {
            \  	'lineinfo': '%3l:%-2v',
            \ }
let g:lightline.component_type = {
            \     'linter_checking': 'left',
            \     'linter_warnings': 'warning',
            \     'linter_errors': 'error',
            \     'linter_ok': 'left',
            \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
let g:lightline.tabline = {
            \   'left': [ ['tabs'] ],
            \   'right': [ ['close'] ]
            \ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:pad#dir="~/notes"
let g:pad#default_format = "markdown"

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir = $HOME."/.config/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.config/UltiSnips']
let g:UltiSnipsEnableSnipMate = 0

let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsEditSplit='vertical'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Pull in from *.mcmd files from current directory and home nvim config directory.
" command! -bang -nargs=* MyCommands call fzf#run({'sink': function('<sid>ProcessMyCommand'), 'source': 'cat '.$HOME.'/.config/nvim/*.mcmd *.mcmd 2>/dev/null'})
