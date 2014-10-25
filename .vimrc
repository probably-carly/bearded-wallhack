" My .vimrc by Curtis Schumacher
" 
" Copious amounts of help was had from the internet
"
" Plugins used
" mustang-vim  : Colors
" NERDTree     : File exploration
" supertab     : tab completion
" snipmate     : textmate like block completion
" vim-node     : Nodejs goodies for vim
" pathogen     : easy plugin installation
"




execute pathogen#infect()
syntax on
filetype plugin indent on

let NERDTreeShowHidden=1

filetype plugin on
set omnifunc=syntaxcomplete#Complete

if &t_Co >= 256 || has("gui_running")
    colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

nnoremap ; :

set hidden
set tabstop=2 expandtab
set autoindent
set copyindent
set nobackup
set noswapfile
set title
set history=1000
set undolevels=1000
set wildignore=*.swp
set number

set shiftwidth=2
set smarttab

set visualbell

set showmatch
set ignorecase
set hlsearch
set incsearch
set backspace=indent,eol,start

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

au VimEnter *  NERDTree

hi MatchParen gui=bold guibg=black guifg=magenta
