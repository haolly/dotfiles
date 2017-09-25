set nocompatible
set ruler
"autocomplate the command in the vim command line status
set wildmenu
syntax on
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs 
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set clipboard=unnamedplus

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \   exe "normal! g`\"" |
 \ endif
" Remember info about open buffers on close
set viminfo^=%

"Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

"""""""""vim plugin manage""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!
call plug#begin('~/.vim/plugged')
"vim-snippets depends on ultisnips
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"useless in terminal vim with dark background
" 'nathanaelkane/vim-indent-guides'
"Do not use this
" 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'easymotion/vim-easymotion'
Plug 'tomasr/molokai'
"Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
"for input method
"Plug 'CodeFalling/fcitx-vim-osx'
"Plug 'ybian/smartim'
Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

"""""""""""""""plugin setting"""""""""""""""
set laststatus=2

set showcmd
