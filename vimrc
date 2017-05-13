" Minimal vimrc

" Explanation of Tab Settings
"   tabstop (ts) - Default width of an actual TAB
"   shiftwidth (sw) - Width of an indent
"   softtabstop (sts) - Width/columns of a TAB (whether tabs or spaces)
"   expandtab (et) - Pressing TAB inserts spaces
"   smarttab - Pressing TAB indents to the next tabstop when at the
"                   beginning of a line
set ts=4 sw=4 sts=4 et smarttab " Default tab behavior

if has("autocmd")
    " Use filetype detection and file-based automatic indenting
    filetype plugin indent on

    " Use tab/space behavior based on filetype
    autocmd Filetype make setlocal ts=8 sw=8 sts=0 noexpandtab
    autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 et
    autocmd Filetype php setlocal ts=2 sw=2 sts=2 et

    " Turn off automatic insertion of comments upon new line
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Syntax highlighting for special files
    autocmd BufRead,BufNewFile *.handlebars set filetype=html
endif

" Appearance
colorscheme desert
syntax enable           " Syntax highlighting (previously syntax on)
set number              " Line numbers
set laststatus=2        " Status bar on 2nd to last line
set ruler               " Show info along bottom

" Behavior
set nobomb              " Don't allow byte-order marks (invisible char)
set ff=unix             " Set fileformat to unix-style line endings
"set nowrap              " don't wrap text
if has("clipboard")
    set clipboard=unnamed   " Copy to system clipboard (if supported)
endif

" Search
set nohlsearch          " Don't continue to highlight searched phrases.
set ignorecase          " Make searches case-insensitive.

" Change search highlighting (default is hard to read)
"highlight Search ctermfg=3 ctermbg=0

" Save swap files in a specific directory (rather than the current one)
"set directory=~/.vim/swapfiles//

" More natural splits than default
set splitbelow " Open new splits below
set splitright " Open new splits to the right
