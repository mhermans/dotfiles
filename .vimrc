" ------------------- "
" Basic configuration "
" ------------------- "

set nocompatible               	" ignore vi compatability

filetype off                   	" required for multiple plugins
filetype plugin indent on     	" required for multiple plugins 

set modelines=0			        " increases security; is nr of lines vim checks
                                " at start of file for init variables

au FocusLost * :wa		        " save on losing focus

set encoding=utf-8
"set scrolloff=3
"set autoindent
"set showmode
"set showcmd
"set hidden
"set wildmenu
"set wildmode=list:longest
"set visualbell
"set cursorline
"set ttyfast
"set ruler
"set backspace=indent,eol,start
"set laststatus=2
"set relativenumber
"set undofile

" line wrapping
"set wrap
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85


" ---------------------------- "
" Navigation and key remapping "
" ---------------------------- "

" change leader key
let mapleader = ","             " Rebind <Leader> key
"let maplocalleader = ","


" Allow moving between splits by pressing Ctrl+hjkl.
" http://www.vimbits.com/bits/10
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Improve up/down movement on wrapped lines 
" http://www.vimbits.com/bits/25
nnoremap j gj
nnoremap k gk


" Disable F1 key (next to esc)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

inoremap jj <ESC>               " use 'jj' to escape faster
set pastetoggle=<F8>            "enable paste toggle and map it to F8 "

" no more arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ------------------------------ "
" Syntax and search highlighting "
" ------------------------------ "

syntax on                       " Enable syntax highlighting
set background=dark
colorscheme molokai

" Clear search highlights 
" http://www.vimbits.com/bits/21
noremap <silent><Leader>/ :nohls<CR>


" Vundle setup
" ------------

" first: git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set rtp+=~/.vim/bundle/Vundle.vim/ 	" what does this do?
call vundle#rc()		" what does this do?

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'msanders/snipmate.vim'
"Bundle 'ervandew/supertab'
"Bundle 'vim-pandoc/vim-pandoc'
Bundle 'plasticboy/vim-markdown'
"Bundle 'airblade/vim-gitgutter'
"Bundle 'chrisbra/csv.vim'

" Python options
" --------------

"build in vim autocompletion, jedi-vim beter?
"autocmd FileType python set omnifunc=pythoncomplete#Complete

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



" ---------------------"
" Settings for plugins "
" ---------------------"

" Settings for vim-airline

" Needed to activate vim-airline
" https://github.com/bling/vim-airline/wiki/FAQ
set laststatus=2
let g:airline#extensions#tabline#enabled = 1        "Show buffers on top

" Settings for python-mode

"disable rope (python-mode) use jedi-vim
let g:pymode_rope = 0

" Settings for NERDTree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

au Filetype nerdtree setlocal nolist            "what does this do?

let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$']

