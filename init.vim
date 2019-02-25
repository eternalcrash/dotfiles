set nocompatible              " required
filetype off                  " required
filetype plugin indent on    " required


call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug '/home/crash/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'benmills/vimux'
call plug#end()


"colorscheme
"let python_highlight_all = 1
"colorscheme PaperColor
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_improved_warnings = 1
let g:gruvbox_italic = 1
let g:gruvbox_guisp_fallback='fg'

syntax on " syntax highlight


" hide mode (its already in lightline
set noshowmode
" lightline theme
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" W0rp/ale settings
let b:ale_enabled = 0
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
:noremap <F7> :ALEToggleBuffer<CR>
let g:ale_lint_on_enter = 0



" My settings
set background=light
set backspace=indent,eol,start
set clipboard=unnamedplus " normal clipboard
set colorcolumn=80
set hidden
set laststatus=2 " Always display status bar
set statusline+=%-10.3n\                     " buffer number
set statusline+=%F
set mouse=a
set nobackup " no swap and backup files
set noswapfile
"set nowrap " do not wrap lines
set number
set showcmd
" tabs -> 4 space , etc
set tabstop=4 " Set tab=4 spaces
set shiftwidth=4
set expandtab " Use spaces instead of tabs
set smarttab
set autoindent

" Enable folding
set foldmethod=indent
set foldlevel=99

" Set relative line numbers disabled
"set relativenumber

"OMNICOMPLETION
filetype plugin on
set cursorline

" save scroll position on buffer change
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

"Search into subfolders
"Provides tab-completion for all file-related tasks
set path+=**
set wildmenu
"make program 
set makeprg='pyflakes'

":make to run Rspec
":cl list errors
":cc# to jump to error by number
":cn and :cp to navigate forward and back


"KEY BINDINGS
:noremap <F4> :set hlsearch! hlsearch?<CR>
" fzf bindings

:nmap <F5> :Buffers<CR>
:nmap <C-l> :Buffers<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" end fzf bindings
:nmap <C-p> :Files<CR>
:nnoremap <C-Tab> :bn<CR>
"DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" In normal mode jk --> Esc
inoremap jk <Esc>
" LEADER MAPS
:let mapleader = " "
" qq macro
:nnoremap <Leader><Leader> @q
 " Run the current file with rspec
 map <Leader>rp :call VimuxRunCommand("clear; python3 " . bufname("%"))<CR>

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vv :VimuxRunLastCommand<CR>

 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>
>
