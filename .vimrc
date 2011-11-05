" .vimrc 
" sources:
" - http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Basic configuration 
" -------------------

set nocompatible               	" ignore vi compatability
filetype off                   	" required for Vundle!
filetype plugin indent on     	" required for Vundle
set modelines=0			        " increases security
au FocusLost * :wa		        " save on losing focus

" Vundle setup
" ------------
 
set rtp+=~/.vim/bundle/vundle/ 	" what does this do?
call vundle#rc()		        " what does this do?

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'msanders/snipmate.vim'
"Bundle 'tomtom/tcomment_vim'
" Bundle 'kevinw/pyflakes-vim'

" Python options
" --------------

autocmd FileType python set omnifunc=pythoncomplete#Complete

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" General options
" ---------------

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


" Remapping
" ---------

" change leader key
let mapleader = ","

" no more arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" ignore F1 help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" use 'jj' to escape faster
inoremap jj <ESC> 

" vsplit & switch + switchcommands
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" mappings for NERDTree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

au Filetype nerdtree setlocal nolist

let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$']

