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
