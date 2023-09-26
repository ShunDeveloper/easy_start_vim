""" vim-javascript
let g:javascript_plugin_jsdoc = 1 " syntax hilighting
let g:javascript_plugin_flow = 1 " check type
let g:jsx_ext_required = 0 " require jsx extension
let g:jsx_pragma_required = 1 " require jsx pragma

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
