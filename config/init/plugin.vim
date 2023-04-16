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
