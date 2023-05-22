" LSP
map <C-q> :LspDocumentDiagnostics<CR>   " Run lint with Ctrl + l
map <C-f> :LspDocumentFormat<CR>        " Format document with Ctrl + f

" normal mode mapping
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> fd <plug>(lsp-definition)
    nmap <buffer> fr <plug>(lsp-references)
    nmap <buffer> fi <plug>(lsp-implementation)
    nmap <buffer> ft <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> f[ <Plug>(lsp-previous-diagnostic)
    nmap <buffer> f] <Plug>(lsp-next-diagnostic)
    nmap <buffer> fK <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" LSP diagnostics setting
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1   " Warn with cursor when missing some syntax
"let g:lsp_signs_error = {'text': '❌'}
"let g:lsp_signs_warning = {'text': '⚠️'}
"let g:lsp_signs_hint = {'text': '💡'}
autocmd BufWritePre <buffer> LspDocumentFormatSync " LSP will run when saving
