"---------------------------------
".vimrc / 'Vim' configuration file
" Nishad Trivedi
" Updated 1.18.2013
"---------------------------------


"----------------
"General settings
"----------------

call pathogen#infect()   " Easy plugin installation

filetype plugin indent on   " Detect the type of file
set history=100 	    	" How many lines of history to remember
set nocompatible 		    " Don't emulate vi bheavior
set mouse=a      		    " Turn on mouse, hold option key
set bs=2                    " Backspace behaves normally
set showcmd			        " Show partial command in the status bar
set number    		    	" Show line numbers
set ruler			        " Turn on line number and column number in status bar
set hlsearch 			    " Highlight search pattern
set incsearch			    " Search for the pattern as it is being typed
set ignorecase			    " Ignore case when searching
set showmatch			    " Show matching brackets/parentheses


set laststatus=2		    " Always show status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"------
" Theme
"------
set t_Co=256
syntax enable			    " Enable syntax highlighting
let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme vombato
colorscheme wombat256
"colorscheme mayansmoke
"set background=light
"set background=dark

"----------------------
"Text formatting/layout
"----------------------

set autoindent 	
set smartindent			
set smarttab
set expandtab			    " Use spaces instead of tabs
set tabstop=4			    " 1 tab == 4 spaces
set shiftwidth=4
set wrap		        	" Wrap lines

"--------
"Commands
"--------
let mapleader = ","		    " Leader allows extra key combos
map <space> /			    " Maps / (search) to spacebar

"-------
"Plugins
"-------
"
"CtrlP
"-----
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'   " CtrlP in Normal mode
let g:ctrl_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.swp,*.zip  " Exclude these from search result
let g:ctrlp_switch_buffer = 'Et'     " Jump to file if it's already open
let g:ctrlp_tabpage_position = 'ac'  " Open file in tab after current



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


