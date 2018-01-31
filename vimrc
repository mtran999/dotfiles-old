""""""""""""""""""""""""""""
" mintyfwesh minimal vimrc "
""""""""""""""""""""""""""""

" Aliases
""""""""""
" Fast go to buffer x
nnoremap gb :ls<CR>:b<Space>

" Explanation of Tab Settings
"   tabstop (ts) - Default width of an actual TAB
"   shiftwidth (sw) - Width of an indent
"   softtabstop (sts) - Width/columns of a TAB (whether tabs or spaces)
"   expandtab (et) - Pressing TAB inserts spaces
"   smarttab - Pressing TAB indents to the next tabstop when at the
"              beginning of a line
set ts=2 sw=2 sts=2 smarttab " Default tab behavior

" Autocommands
"""""""""""""""
if has("autocmd")
	" au = autocmd, ft = filetype

	" Use filetype detection and file-based automatic indenting
	filetype plugin indent on

	" Turn off automatic insertion of comments upon new line
	au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

	" Use tab/space behavior based on filetype
	au Filetype make setlocal ts=4 sw=4 sts=0 noexpandtab
	au Filetype javascript setlocal ts=2 sw=2 sts=2 et
	au Filetype html setlocal ts=2 sw=2 sts=2 noexpandtab
	au Filetype python setlocal ts=4 sw=4 st=4 sts=4 et
	au Filetype cpp setlocal ts=2 sw=2 st=2 sts=2 et

	" Syntax highlighting for special files
	au BufRead,BufNewFile *.handlebars,*.hbs set ft=html
	au BufRead,BufNewFile *.json set ft=javascript
endif

" Appearance
"""""""""""""
colorscheme desert
if !exists("g:syntax_on")
	syntax enable           " Syntax highlighting (previously syntax on)
endif
set number              " Line numbers
set laststatus=2        " Status bar on 2nd to last line
set ruler               " Show info along bottom
"set nowrap              " Don't wrap text
set showcmd             " Show keystrokes for each command
set showmode
set colorcolumn=81      " Highlights column 81, etc.

" Netrw Directory Explorer
" Use :e. or :edit . to open in current window (recommended)
" Use :Vex command to open in split
let g:netrw_banner = 0	" No directory explorer banner
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4 " Open new files in prev window
let g:netrw_altv = 1
let g:netrw_winsize = 25 " Take up 25% of screen
"let g:netrw_preview = 1 " Enable file preview with p, Ctrl+W+z to close
" Automatically open netrw
"augroup ProjectDrawer
"	autocmd!
"	autocmd VimEnter * :Vexplore
"augroup END

" Behavior
"""""""""""
set nobomb              " Don't allow byte-order marks (invisible char)
set ff=unix             " Set fileformat to unix-style line endings
if has("clipboard")
	set clipboard=unnamed " Copy to system clipboard (if supported)
endif
set splitbelow          " Open new splits below
set splitright          " Open new splits to the right
" Save swap files in a specific directory (rather than the current one)
"set directory=~/.vim/swapfiles//
set visualbell          " Blink cursor on error (instead of annoying sound)
set backspace=indent,eol,start " Backspace deletes everything
set nohidden            " Buffers will be actually closed and not hidden

" Search
"""""""""
set nohlsearch          " Don't continue to highlight searched phrases.
set ignorecase          " Make searches case-insensitive.
" Change search highlighting (default can be hard to read)
"highlight Search ctermfg=3 ctermbg=0

" Statusline
"""""""""""""
" For more info, see :help statusline
set statusline=(%n)\    " Buffer number
set statusline+=%f\     " Filename
set statusline+=%m      " Modified flag
set statusline+=%=      " Left/right separator
set statusline+=%r\     " Readonly flag
set statusline+=%y\     " Filetype
set statusline+=[%{&ff}]\  " File format (line ending style)
set statusline+=%c,\    " Current column
set statusline+=%l/%L\  " Current/total line
