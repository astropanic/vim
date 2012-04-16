call pathogen#infect()
filetype plugin indent on
set nocompatible
set t_Co=256
set shell=bash
set nu
set ruler
syntax on
set encoding=utf-8
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:.
set ttyfast

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

color solarized

set backupdir=~/.vim/backup
set directory=~/.vim/backup

set showcmd

map <leader>. :edit ~/.vimrc<CR>

set complete-=i

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp'

map .. :CtrlP<CR>
map ,, :CtrlPBuffer<CR>
map ?? :CtrlPMRUFiles<CR>

vnoremap < <gv
vnoremap > >gv

inoremap jj <ESC>

nnoremap <leader>H *<C-O>:AckFromSearch!

nnoremap ; :
highlight WhitespaceEOL ctermbg=Red
match WhitespaceEOL /\s\+$/
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

function FingerTraining()
  noremap j <ESC>
  noremap k <ESC>
  noremap h <ESC>
  noremap l <ESC>
endfunction

command FingerTraining call FingerTraining()
