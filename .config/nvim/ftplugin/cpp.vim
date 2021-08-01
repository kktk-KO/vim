let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'c' : ['clangd'], 'cpp' : ['clangd'] }
