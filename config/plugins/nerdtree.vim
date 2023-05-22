" NERDTree settings
map <C-n> :NERDTreeToggle<CR> " This maps the shortcut key combination Ctrl + n to toggle the NERDTree plugin on and off.
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-o> :tabnew<CR>
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 24 " This sets the font used in the Vim GUI to 'Droid Sans Mono for Powerline Nerd Font Complete' with a font size of 16.
let g:WebDevIconsNerdTreeBeforeGlyphPadding = "" " This sets the padding between the file/folder icon and the file/folder name to an empty string.
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true " This enables folder icons to be decorated with Unicode symbols.
if exists('g:loaded_webdevicons') " This checks if the WebDevIcons plugin is loaded and refreshes it if it is.
  call webdevicons#refresh()
endif
