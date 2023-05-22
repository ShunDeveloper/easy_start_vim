""" General Setting
let g:ale_fix_on_save = 1 " when saving, formatter fix code
let g:ale_sign_error = '>>' " change error sign
let g:ale_sign_warning = '--' " change warning sign

""" JavaScript Setting
let g:ale_javascript_prettier_use_local_config = 1

""" Python3 Setting
let g:python_host_prog = '/usr/bin/python3' " Set the path to the Python 3 interpreter
let g:python3_host_prog = '/usr/bin/python3' " Set the path to the Python 3 interpreter

""" Specify Linter & Fixer
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'javascript': ['standard'],
    \ }

let g:ale_fixers = {
    \ 'python': ['autopep8', 'remove_trailing_lines'],
    \ 'javascript': ['eslint'],
    \ 'css': ['prettier'],
    \ }

let g:ale_python_flake8_options = '--ignore=E501' " ignore Error 501

""" auto run setting
augroup myALE
  autocmd!
  autocmd BufEnter * let b:ale_lint_on_enter = 1
augroup END

