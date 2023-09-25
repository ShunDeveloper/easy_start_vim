" Setting up Vim plugins with vim-plug
call plug#begin()
  " Sensible defaults and appearance
  Plug 'tpope/vim-sensible'
  Plug 'drewtempelmeyer/palenight.vim'

  " File explorer and related
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/nerd-fonts'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lambdalisue/glyph-palette.vim'

  " Status and UI
  Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter'

  " Commenting and text manipulation
  Plug 'tpope/vim-commentary'
  Plug 'mileszs/ack.vim'

  " Language Server Protocol and completion
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  " Language support
  Plug 'dense-analysis/ale'
  Plug 'sheerun/vim-polyglot'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'vim-python/python-syntax'

  " Other utilities
  Plug 'github/copilot.vim'
  Plug 'mattn/vim-sonictemplate'
call plug#end()
