set autoindent                " Enable auto indentation
set autoread                  " Automatically reload files if changed externally
set clipboard+=unnamed        " Use the system clipboard
set clipboard=unnamed,autoselect " Copy yanked data to the clipboard and selected data
set cursorcolumn              " Highlight the current column
set cursorline                " Highlight the current line
set encoding=UTF-8            " Set file encoding to UTF-8
set expandtab                 " Convert tabs to spaces
set fenc=utf-8                " Set the file encoding to UTF-8
set hidden                    " Allow switching buffers without saving
set hlsearch                  " Highlight search results
set ignorecase                " Ignore case when searching
set incsearch                 " Show search matches as you type
set laststatus=2              " Always show the status line
set nocompatible              " Disable compatibility with vi
set nobackup                  " Disable creation of backup files
set noswapfile                " Disable creation of swap files
set number                    " Display line numbers
set shiftwidth=2              " Set the width of an indentation level to 2 spaces
set showcmd                   " Show incomplete commands
set showmatch                 " Highlight matching brackets
set smartcase                 " Enable case-sensitive searching when uppercase letters are used
set smartindent               " Enable smart indentation
set syntax=enable             " Enable syntax highlighting
set tabstop=2                 " Set the width of a tab to 2 spaces
set title                     " Set the terminal title
set virtualedit=onemore       " Allow cursor to move past the end of line
set visualbell                " Use visual bell instead of beeping
set wildmode=list:longest     " Use longest partial completion
set wildmenu
set wildmode=full
set wrapscan                  " Search wraps around the end of the file

" Highlight Zenkaku space character
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

" Key mappings
inoremap <silent> jj <ESC>    " Escape from insert mode with jj
nmap <Esc><Esc> :nohlsearch<CR><Esc> " Disable search highlighting with ESC ESC
vnoremap <silent> <S-K> y<Esc>P

" Transparent background
augroup TransparentBG
  autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none
augroup END

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
