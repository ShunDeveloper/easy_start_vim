"" git操作
" move on previous place changed with g]
nnoremap g[ :GitGutterPrevHunk<CR>
" move on next place changed with g[
nnoremap g] :GitGutterNextHunk<CR>
" higlight place changed with gh
nnoremap gh :GitGutterLineHighlightsToggle<CR>
" show diff of line on cursor with gp
nnoremap gp :GitGutterPreviewHunk<CR>
" change color of symbols
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red
