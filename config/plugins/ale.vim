""" General Setting
let g:ale_fix_on_save = 1 " when saving, formatter fix code
let g:ale_sign_error = '>>' " change error sign
let g:ale_sign_warning = '--' " change warning sign

" Setting for Python
" Enable syntax highlighting for Python files
" autocmd FileType python syntax on
let g:python_highlight_all = 1

" flake8をLinterとして登録
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ }

" 各ツールをFixerとして登録
let g:ale_fixers = {
    \ 'python': ['autopep8', 'black', 'isort'],
    \ }
let g:flake8_ignore = 'E501'
let g:ale_python_flake8_options = '--max-line-length=120 --ignore=E265,E266,501'


" 各ツールの実行オプションを変更してPythonパスを固定
let g:python3_host_prog = '~/.pyenv/shims/python3'
let g:ale_python_flake8_executable = g:python3_host_prog
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_autopep8_executable = g:python3_host_prog
let g:ale_python_autopep8_options = '-m autopep8'
let g:ale_python_isort_executable = g:python3_host_prog
let g:ale_python_isort_options = '-m isort'
let g:ale_python_black_executable = g:python3_host_prog
let g:ale_python_black_options = '-m black'
let g:ale_fix_on_save = 1


""" auto run setting
augroup myALE
  autocmd!
  autocmd BufEnter * let b:ale_lint_on_enter = 1
augroup END

