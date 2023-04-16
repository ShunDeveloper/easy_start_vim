" Glyph settings
" This creates an auto command group called 'my-glyph-palette' that applies a glyph palette to the NERDTree plugin.
" It applies the glyph palette when the file type is 'nerdtree' or 'startify'.
augroup my-glyph-palette
  autocmd! *
  autocmd FileType nerdtree call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
