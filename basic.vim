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
inoremap <silent> jj <ESC> " escape from insert mode with jj
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
set expandtab             " Convert tabs to spaces
set tabstop=2             " Set the width of a tab to 2 spaces
set shiftwidth=2          " Set the width of an indentation level to 2 spaces
nmap <Esc><Esc> :nohlsearch<CR><Esc> " Disable search highlighting with ESC ESC
