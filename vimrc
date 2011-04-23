filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

" Basics
set nocompatible
set noexrc
set showcmd
"set background=dark
syntax on
set t_Co=256
" Fallback colorscheme
if has("gui")
	set guifont=DejaVu\ Sans\ Mono\ 9
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
set backupdir=/tmp
set dir=/tmp
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
"  taglist
let g:Tlist_Auto_Open=1
let g:Tlist_Exit_OnlyWindow=1
