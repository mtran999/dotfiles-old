""""""""""""""""""""""""""""
" mintyfwesh minimal vimrc "
""""""""""""""""""""""""""""

" Explanation of Tab Settings
"   tabstop (ts) - Default width of an actual TAB
"   shiftwidth (sw) - Width of an indent
"   softtabstop (sts) - Width/columns of a TAB (whether tabs or spaces)
"   expandtab (et) - Pressing TAB inserts spaces
"   smarttab - Pressing TAB indents to the next tabstop when at the
"              beginning of a line
set ts=4 sw=4 sts=4 et smarttab " Default tab behavior

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
    au Filetype html setlocal ts=2 sw=2 sts=2 et

    " Syntax highlighting for special files
    au BufRead,BufNewFile *.handlebars,*.hbs set ft=html
    au BufRead,BufNewFile *.json set ft=javascript
endif

" Appearance
"""""""""""""
colorscheme desert
syntax enable           " Syntax highlighting (previously syntax on)
set number              " Line numbers
set laststatus=2        " Status bar on 2nd to last line
set ruler               " Show info along bottom
"set nowrap              " don't wrap text
set showcmd             " Show keystrokes for each command

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

" Search
"""""""""
set nohlsearch          " Don't continue to highlight searched phrases.
set ignorecase          " Make searches case-insensitive.
" Change search highlighting (default is hard to read)
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
