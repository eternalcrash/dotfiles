set nocompatible
filetype off

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" for opening files
map <silent> <F3> :NERDTreeToggle<CR>
map <silent> <F2> :Files<CR>
"map <silent> <F4> :syntax sync fromstart<CR>
:noremap <F4> :set hlsearch! hlsearch?<CR>
:imap jk <Esc>

:set cursorline
:set ignorecase
:set smartcase

set incsearch
set laststatus=2
set nobackup
set noswapfile
set clipboard=unnamedplus " normal clipboard
set colorcolumn=80
set number
set mouse=a
set hidden  " allow change from unsaved buffers

" general
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4
" python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" javascript
au BufNewFile,BufRead *.js, *.html, *.css, *.jsx, *.vue
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

autocmd Filetype go setlocal noexpandtab

let g:fzf_layout = { 'down': '~60%' }

" autocmd vimenter * NERDTree
let g:ackprg = 'ag --nogroup --nocolor --column'
" fzf bindings
:nmap <C-p> :Files<CR>

call plug#begin('~/.vim/plugged')

Plug 'posva/vim-vue'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'

let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}

" be sure to read full install instructions. this still needs
" you to cd ~/.vim/plugged/YouCompleteMe
" python ./install.py --js-completer
Plug 'Valloric/YouCompleteMe'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark
set background=dark

