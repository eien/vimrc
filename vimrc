filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basics
set nocompatible
set noexrc
set showcmd
"set background=dark
syntax on

" General
filetype plugin indent on
if version >= 700
    set autochdir
endif
set backspace=indent,eol,start
set backup
set backupdir=/tmp
set dir=/tmp
set fileformats=unix,dos,mac
set number
set mouse=a
set ttyfast
set wildmenu
set wildmode=list:longest

" Vim UI
if version >= 700
    set cursorcolumn " highlight the current column
    set cursorline "highlight the current line
endif
set hlsearch "highlight the search phrases 
set incsearch
set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
"set list " show tabs
set listchars=tab:>-,trail:- " show tabs and trailing spaces

if has("gui")
    colorscheme evening
else
    colorscheme ron
endif
set tabstop=4
"set expandtab
set shiftwidth=4
set autoindent
set smartindent
set showmatch
set ruler

set ignorecase
set smartcase




" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Plugins
"
"  syntastic
let g:syntastic_c_check_header = 1
