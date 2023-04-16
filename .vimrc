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

" General settings
set encoding=UTF-8        " Set file encoding to UTF-8
set fenc=utf-8            " Set the file encoding to UTF-8
set nobackup              " Disable creation of backup files
set noswapfile            " Disable creation of swap files
set autoread              " Automatically reload files if changed externally
set hidden                " Allow switching buffers without saving
set showcmd               " Show incomplete commands
set list listchars=tab:\▸\-  " Display tabs and trailing spaces with special characters
set title                 " Set the terminal title
set laststatus=2          " Always show the status line
set clipboard+=unnamed    " Use the system clipboard
set nocompatible          " Disable compatibility with vi
set number                " Display line numbers
set cursorline            " Highlight the current line
set cursorcolumn          " Highlight the current column
set virtualedit=onemore   " Allow cursor to move past the end of line
set smartindent           " Enable smart indentation
set autoindent            " Enable auto indentation
set visualbell            " Use visual bell instead of beeping
set showmatch             " Highlight matching brackets
set wildmode=list:longest " Use longest partial completion
set hlsearch              " Highlight search results
set ignorecase            " Ignore case when searching
set smartcase             " Enable case-sensitive searching when uppercase letters are used
set incsearch             " Show search matches as you type
set wrapscan              " Search wraps around the end of the file
set clipboard=unnamed,autoselect " copy yanked data to clip board and selected data
set syntax=enable         " Enable syntax highlighting
colorscheme molokai       " Set color scheme to molokai
let g:molokai_original = 1

inoremap <silent> jj <ESC> " escape from insert mode with jj
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

" Tab settings
set expandtab             " Convert tabs to spaces
set tabstop=2             " Set the width of a tab to 2 spaces
set shiftwidth=2          " Set the width of an indentation level to 2 spaces
retab                     " Convert all tabs to spaces

" NERDTree settings
nnoremap j gj                 " Map j to move down displayed lines
nnoremap k gk                 " Map k to move up displayed lines
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

" Disable search highlighting with ESC ESC
nmap <Esc><Esc> :nohlsearch<CR><Esc>


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
