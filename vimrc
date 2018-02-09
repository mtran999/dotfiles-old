""""""""""""""""""""""""""""
" mintyfwesh minimal vimrc "
""""""""""""""""""""""""""""

" Disable vi 'compatible' mode, enables a lot of features
set nocp  "(nocompatible) 

"" Aliases
""""""""""
" Fast go to buffer x
nnoremap gb :ls<CR>:b<Space>

" Explanation of Tab Settings
"   tabstop (ts) - Default width of an actual TAB
"   shiftwidth (sw) - Width of an indent
"   softtabstop (sts) - Width/columns of a TAB (whether tabs or spaces)
"   expandtab (et) - Pressing TAB inserts spaces
"   noexpandtab (noet) - Pressing TAB inserts actual tab
"   smarttab - Pressing TAB indents to the next tabstop when at the
"              beginning of a line
set ts=2 sw=2 sts=2 smarttab et  " Default tab behavior
set ai  " autoindent

"" Autocommands
"""""""""""""""
if has("autocmd")
	" au = autocmd, ft = filetype

	" Use filetype detection and file-based automatic indenting
	filetype plugin indent on

	" Turn off automatic insertion of comments upon new line
	au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

	" Use tab/space behavior based on filetype
	au Filetype make setlocal ts=4 sw=4 sts=0 noet
	au Filetype javascript setlocal ts=2 sw=2 sts=2 et
	au Filetype html setlocal ts=2 sw=2 sts=2 noet
	au Filetype python setlocal ts=4 sw=4 st=4 sts=4 et
	au Filetype cpp setlocal ts=2 sw=2 st=2 sts=2 et

	" Syntax highlighting for special files
	au BufRead,BufNewFile *.handlebars,*.hbs set ft=html
	au BufRead,BufNewFile *.json set ft=javascript
endif

"" Appearance
"""""""""""""
colorscheme desert
if !exists("g:syntax_on")
	syntax enable           " Syntax highlighting (previously syntax on)
endif

set number          " Line numbers
set laststatus=2    " Status line/bar on 2nd to last line
set wildmenu        " Shows command completions in status line
set ruler           " Show info along bottom
"set nowrap          " Don't wrap text
set showcmd         " Show keystrokes for each command
set showmode
set colorcolumn=81  " Highlights column 81, etc.

"" Netrw Directory Explorer
" Use :e. or :edit . to open in current window (recommended)
" Use :Vex command to open in split

"" Behavior
"""""""""""
if has("clipboard")
	set clipboard=unnamed " Copy to system clipboard (if supported)
endif

" Save swap files in a specific directory (rather than the current one)
"set directory=~/.vim/swapfiles//

set nobomb       " Don't allow byte-order marks (invisible char)
set ff=unix      " Set fileformat to unix-style line endings
set ffs=unix,mac,dos  " Specify which fileformats to check when opening files
                      "   The first ffs is also the one used for new buffers
set splitbelow   " Open new splits below
set splitright   " Open new splits to the right
set vb           " (visualbell) blink cursor on error
set noeb         " (noerrorbells) Turn off bell sound
set bs=2         " (backspace) deletes indent, eol, start
set nohidden     " Buffers will be actually closed and not hidden
set fo=cqrt      " (formatoptions) Newline will continue comments
set ww=<,>,h,l   " (whichwrap) left, right can move cursor onto
                 "   next line instead of stopping
set nosol        " (nostartofline) Cursor stays in the same column
                 "   when running commands like gg

"" Search
"""""""""
set nohlsearch          " Don't continue to highlight searched phrases.
set ignorecase          " Make searches case-insensitive.
" Change search highlighting (default can be hard to read)
"highlight Search ctermfg=3 ctermbg=0

"" Statusline
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
