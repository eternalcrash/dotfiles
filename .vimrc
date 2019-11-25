set nocompatible
filetype off

" for opening files
map <silent> <F3> :NERDTreeToggle<CR>
map <silent> <F2> :Files<CR>
map <silent> <F4> :syntax sync fromstart<CR>
:imap jk <Esc>

imap cll console.log()<Esc>==f(a

set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

autocmd Filetype go setlocal noexpandtab

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
let g:fzf_layout = { 'down': '~60%' }

" autocmd vimenter * NERDTree
let g:ackprg = 'ag --nogroup --nocolor --column'


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
Plug 'morhetz/gruvbox'



call plug#end()


colorscheme gruvbox
set background=dark

