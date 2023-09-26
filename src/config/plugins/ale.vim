""" General Setting
let g:ale_fix_on_save = 1 " when saving, formatter fix code
let g:ale_sign_error = '>>' " change error sign
let g:ale_sign_warning = '--' " change warning sign

let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

""" auto run setting
augroup myALE
  autocmd!
  autocmd BufEnter * let b:ale_lint_on_enter = 1
augroup END
