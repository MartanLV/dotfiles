if filereadable(expand('%'))
  " on reading php file ensure if there is strict type
else
  " the file is new, we stub out opening tag and strict type
  call setline('1', "#!/bin/bash")
  call setline('2', '') " free line
  call setline('3', '') " free line
  normal 3G
endif

