"---------------------------------
".vimrc / 'Vim' configuration file
" Nishad
" Updated 1.18.2013
"---------------------------------


"----------------
"General settings
"----------------

filetype on   			" detect the type of file
set history=100 		" How many lines of history to remember
set nocompatible 		" Don't emulate vi bheavior
set mouse=a      		" Turn on mouse
set showcmd			" Show partial command in the status bar
set number    			" Show line numbers
set ruler			" Turn on line number and column number in status bar
set hlsearch 			" Highlight search pattern
set incsearch			" Search for the pattern as it is being typed
set ignorecase			" Ignore case when searching
set showmatch			" Show matching brackets/parentheses


set laststatus=2		" Always show status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"------
" Theme
"------
syntax enable			" Enable syntax highlighting
set background=dark


"----------------------
"Text formatting/layout
"----------------------

set autoindent 	
set smartindent			
set smarttab
set expandtab			" Use spaces instead of tabs
set tabstop=4			" 1 tab == 4 spaces
set shiftwidth=4
set wrap			" Wrap lines

"--------
"Commands
"--------
let mapleader = ","		" Leader allows extra key combos
map <space> /			" Maps / (search) to spacebar


"---------
"Functions
"---------

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Delete trailing white space on save, useful for Python and CoffeeScript
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


