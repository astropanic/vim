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

colorscheme vividchalk

set backupdir=~/.vim/backup
set directory=~/.vim/backup

set showcmd

map <leader>. :edit ~/.vimrc<CR>

set complete-=i

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp'

nmap .. :CtrlP<CR>
nmap ,, :CtrlPBuffer<CR>
nmap ?? :CtrlPMRUFiles<CR>

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
let g:ackprg="ag --nocolor --nogroup --column "
set colorcolumn=80,100

 au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
     au BufEnter *.org            call org#SetOrgFileType()

vmap <leader><leader> <esc>"ty:call Send_to_Tmux(@t)
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set errorformat=%f:%l\ \-\ %m
set timeoutlen=250
set showmatch
set mat=5
let ruby_operators=1
