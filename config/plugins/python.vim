" Setting for Python
" Enable syntax highlighting for Python files
autocmd FileType python syntax on
let g:python_highlight_all = 1

" for flake8 Python linter
let g:python_host_prog = '/usr/bin/python3' " Set the path to the Python 3 interpreter
let g:python3_host_prog = '/usr/bin/python3' " Set the path to the Python 3 interpreter

let g:ale_linters = {
    \ 'python': ['flake8'],
    \ }

let g:ale_fixers = {
    \ 'python': ['autopep8', 'remove_trailing_lines'],
    \ }

let g:ale_python_flake8_options = '--ignore=E501'

augroup myALE
  autocmd!
  autocmd BufEnter * let b:ale_lint_on_enter = 1
augroup END
