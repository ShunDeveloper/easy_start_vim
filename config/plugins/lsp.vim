" LSP
map <C-l> :LspDocumentDiagnostics<CR>   " Run lint with Ctrl + l
map <C-f> :LspDocumentFormat<CR>        " Format document with Ctrl + f
let g:lsp_diagnostics_echo_cursor = 1   " Warn with cursor when missing some syntax
autocmd BufWritePre <buffer> LspDocumentFormatSync " LSP will run when saving
