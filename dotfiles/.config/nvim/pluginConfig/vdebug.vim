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
