filetype off
if has("unix")
	set rtp+=~/.vim/vundle/
else
	set rtp+=~/vimfiles/vundle/
endif

call vundle#rc()

" Bundles
Bundle 'Conque-Shell'
Bundle 'indentpython'
Bundle 'python.vim--Vasiliev'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/threesome.vim'
Bundle 'mbadran/headlights'

Bundle 'vim-ruby/vim-ruby'

scriptencoding utf-8
set encoding=utf-8

" Basics
set nocompatible
set noexrc
set showcmd
"set background=dark
syntax on
set t_Co=256
" Fallback colorscheme
if has("gui")
	if has("unix")
		set guifont=DejaVu\ Sans\ Mono\ 9
	else
		set guifont=DejaVu_Sans_Mono:h9:cANSI
	endif
	colorscheme evening
else
	colorscheme ron
endif
silent! colorscheme solarized

" General
filetype plugin indent on
if version >= 700
    set autochdir
endif
set backspace=indent,eol,start
set backup
if has("unix")
	set backupdir=/tmp//
	set dir=/tmp//
else
	set backupdir=/temp//
	set dir=/temp//
endif
set fileformats=unix,dos,mac
set number
silent! set mouse=a
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
"set list " show tabs
" window number
set statusline=\|\ %{winnr()}\ \|%*
" buffer number
set statusline+=%#ErrorMsg#%{&modified?'\ '.bufnr('%').'\ ':''}%*
set statusline+=%#StatusLineNC#%{&modified?'':'\ '.bufnr('%').'\ '}%*
set statusline+=\|%*
" filename
set statusline+=\ \"%t\"\ %<
" right align
set statusline+=%=
" file info
set statusline+=[%{strlen(&ft)?&ft:'none'}\|%{strlen(&fenc)?&fenc:'none'}\|%{&ff}]\ 
" byte value and syntax highlight type
set statusline+=\ [%{&wrap?'+':'-'}wrap\|
set statusline+=%{&expandtab?'+':'-'}xtab\|
set statusline+=%{&foldenable?'+':'-'}
set statusline+=%{strpart(&foldmethod,0,3)}
set statusline+=:%{&foldlevel}]\ \|
set statusline+=\ L:%l/%L%*\ C:%c%*
set statusline+=\ %{fugitive#statusline()}
set listchars=tab:>-,trail:- " show tabs and trailing spaces

set tabstop=4
"set expandtab
set shiftwidth=4
set autoindent
set smartindent
set showmatch
set ruler

set ignorecase
set smartcase

" Disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Plugins
"
"  syntastic
let g:syntastic_c_check_header=1
"  tagbar
let g:tagbar_left=1
let g:tagbar_autoshowtag=1
nmap <leader>t :TagbarToggle<CR>
