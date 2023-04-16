" Setting up Vim plugins with vim-plug
call plug#begin()
  Plug 'tpope/vim-sensible'                " Sensible defaults for Vim
  Plug 'preservim/nerdtree'                " File explorer
  Plug 'ryanoasis/nerd-fonts'              " Nerd Fonts
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'            " Adds file type icons to Vim plugins
  Plug 'vim-airline/vim-airline'           " Status bar
  Plug 'vim-airline/vim-airline-themes'    " Themes for Airline
  Plug 'lambdalisue/glyph-palette.vim'     " Add glyphs for Nerd Fonts
  Plug 'tpope/vim-commentary'              " Comment out lines
  Plug 'prabirshrestha/vim-lsp'            " LSP client for Vim
  Plug 'mattn/vim-lsp-settings'            " LSP configuration for Vim
  Plug 'prabirshrestha/asyncomplete.vim'   " Asynchronous auto completion framework
  Plug 'prabirshrestha/asyncomplete-lsp.vim'  " LSP completion source for Asyncomplete
  Plug 'mattn/vim-sonictemplate'           " Template engine for Vim
  Plug 'dense-analysis/ale'                " Linter
  Plug 'tomasr/molokai'                    " colorscheme
  Plug 'airblade/vim-gitgutter'
  Plug 'github/copilot.vim'                " GitHub Copilot
call plug#end()

source ./basic.vim

colorscheme molokai       " Set color scheme to molokai
let g:molokai_original = 1

" NERDTree settings
map <C-n> :NERDTreeToggle<CR> " This maps the shortcut key combination Ctrl + n to toggle the NERDTree plugin on and off.
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 24 " This sets the font used in the Vim GUI to 'Droid Sans Mono for Powerline Nerd Font Complete' with a font size of 16.
let g:WebDevIconsNerdTreeBeforeGlyphPadding = "" " This sets the padding between the file/folder icon and the file/folder name to an empty string.
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true " This enables folder icons to be decorated with Unicode symbols.
if exists('g:loaded_webdevicons') " This checks if the WebDevIcons plugin is loaded and refreshes it if it is.
  call webdevicons#refresh()
endif

" Glyph settings
" This creates an auto command group called 'my-glyph-palette' that applies a glyph palette to the NERDTree plugin.
" It applies the glyph palette when the file type is 'nerdtree' or 'startify'.
augroup my-glyph-palette
  autocmd! *
  autocmd FileType nerdtree call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" Airline
let g:airline#extensions#tabline#enabled = 1 " enable the airline tabline extension
let g:airline_powerline_fonts = 1
let g:airline#extensions#default#layout = [
    \[ 'a', 'b', 'c' ],
    \['z'],
    \]
let g:airline_section_c = '%t %M' " set the airline section for the current file name and modified status
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v' " set the airline section for the current line and column number
let g:airline#extensions#hunks#non_zero_only = 1 " set airline to show only nonzero hunks
let g:airline#extensions#tabline#fnamemod = ':t' " set airline to show only the filename without the path
let g:airline#extensions#tabline#show_buffers = 1 " show the buffers in airline tabline
let g:airline#extensions#tabline#show_splits = 0 " do not show splits in airline tabline
let g:airline#extensions#tabline#show_tabs = 1 " show tabs in airline tabline
let g:airline#extensions#tabline#show_tab_nr = 0 " do not show the tab number in airline tabline
let g:airline#extensions#tabline#show_tab_type = 0 " show the tab type in airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " do not show the close button in airline tabline
let g:airline_theme = 'base16_monokai' " set the airline theme to base16_monokai

" LSP
map <C-l> :LspDocumentDiagnostics<CR>   " Run lint with Ctrl + l
map <C-f> :LspDocumentFormat<CR>        " Format document with Ctrl + f
let g:lsp_diagnostics_echo_cursor = 1   " Warn with cursor when missing some syntax
autocmd BufWritePre <buffer> LspDocumentFormatSync " LSP will run when saving

" Setting for Python
" you can use this by running `:set syntax=python`
" do not forget to run `pip3 install flake8 autopep8`
"
" Enable syntax highlighting for Python files
autocmd FileType python syntax on
" for flake8 Python linter
let g:flake8_command = 'flake8'
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
