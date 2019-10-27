" Last updated: 2019/10/27

" Fast go to buffer x.
"nnoremap gb :ls<CR>:b<Space>

" Explanation of tab settings:
"   tabstop (ts)      Default width of an actual TAB
"   shiftwidth (sw)   Width of an indent level
"   softtabstop (sts) Width/columns of a TAB (whether tabs or spaces)
"                       Makes backspace delete (sts) number of spaces at once
"   expandtab (et) - Pressing TAB inserts spaces
"   noexpandtab (noet) - Pressing TAB inserts actual tab
"   smarttab - Pressing TAB indents to the next tabstop when at the
"              beginning of a line
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
set autoindent

colorscheme desert

syntax enable           " Syntax highlighting (previously syntax on).

set number              " Line numbers.

set laststatus=2        " Status line/bar on 2nd to last line.
" For more info, see :help statusline
set statusline=(%n)\        " Buffer number
set statusline+=%f\         " Filename
set statusline+=%m          " Modified flag
set statusline+=%=          " Left/right separator
set statusline+=%r\         " Readonly flag
set statusline+=%y\         " Filetype
set statusline+=[%{&ff}]\   " File format (line ending style)
set statusline+=%c,\        " Current column
set statusline+=%l/%L\      " Current/total line

set wildmenu            " Shows command completions in status line.
set showcmd             " Show keystrokes for each command.
set colorcolumn=81      " Highlights column 81, etc.
set display+=lastline   " Display as much of the last line as possible
                        "   instead of @.

"" Netrw Directory Explorer
" Use :e. or :edit . to open in current window (recommended)
" Use :Vex command to open in split

if has("clipboard")
    set clipboard=unnamed " Copy to system clipboard (if supported)
endif

set hlsearch            " Turn on search highlighting
                        "   To clear highlighting, use :nohightlight or :noh
"set nohlsearch          " Turns off search highlighting completely.
"set ignorecase          " Make searches case-insensitive.
                        "   To perform case insensitive search: use \c anywhere
                        "   in the search string.
                        "   e.g. /Copyright\c will be case insensitive
"set smartcase           " Case sensitive searches triggered only by capital
                        "   letters in search term. (ignorecase must be set)

