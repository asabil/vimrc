set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-sensible'

Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'AndrewRadev/sideways.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'mhinz/vim-signify'

Bundle 'editorconfig/editorconfig-vim'
Bundle 'scrooloose/syntastic'

Bundle 'altercation/vim-colors-solarized'

Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Web
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
" Erlang
Bundle 'edkolev/erlang-motions.vim'
" Go
Bundle 'jnwhiteh/vim-golang'
" Elm
Bundle 'lambdatoast/elm.vim'

filetype plugin indent on
runtime! config/*.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set undofile
set undodir=~/.vimundo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

let g:solarized_termcolors=256
set background=dark
try
	colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
	colorscheme desert
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " turn on line numbers
set hid                 " you can change buffer without saving
set mouse=a             " use mouse everywhere
set shortmess=atI       " shortens messages to avoid 'press a key' prompt
set report=0            " tell us when anything is changed via :...
set noerrorbells        " don't make noise
set guifont=Sauce\ Code\ Powerline:h13

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch           " show matching brackets
set mat=5               " how many tenths of a second to blink matching brackets for
set smartcase           " Case insensitive match unless search contains uppercase
set hls ignorecase      " Highlight search
set list listchars=tab:\|\ ,extends:>,trail:-,nbsp:_ " display tabs
set noerrorbells visualbell t_vb= " Disable all bells

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set fo=tcrqn          " See Help (complex)
"set si                 " smartindent
set tabstop=4           " tab spacing (settings below are just to unify it)
set softtabstop=4       " unify
set shiftwidth=4        " unify
"set noexpandtab        " real tabs please!
set nowrap              " do not wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion/Wildcards
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*.so,*.o,*.a,*.la,*.class,*.obj,.git,*.beam,*.mo,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc

set completeopt=menu,longest
