filetype plugin on
syntax enable

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set ic

" Not sure what these do lol
set wildignore+=.git
set tags=./tags,tags;$HOME
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
augroup filetypedetect
    au! BufRead,BufNewFile *.t, *.sc setfiletype c
augroup END

" Quit NERDTree when a file is opened
let g:NERDTreeQuitOnOpen=1

" Remaps 
let mapleader = ";"
inoremap kj <Esc>
inoremap KJ <Esc>
cnoremap kj <Esc>
cnoremap KJ <Esc>
vnoremap kj <Esc>
vnoremap KJ <Esc>
nnoremap <F3> :e $MYVIMRC<CR>
nnoremap <TAB> :bn<CR>
noremap <leader>w :w<CR>
noremap <SPACE> :
" shortcut to compile and run C programs
noremap <leader>c :w <CR> :!clear && gcc % -o %< && ./%< <CR>
noremap <leader>p :w <CR> :!clear && python3 % <CR>

" Plug Ins 
call plug#begin('~/.vim/plugged')

    Plug 'arcticicestudio/nord-vim'
    Plug 'mhartington/oceanic-next'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'

call plug#end()

" Set colorscheme 
colorscheme nord
set background=dark

" Status line look - Airline Configuration 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

set showtabline=2
set noshowmode
set t_Co=256
set encoding=utf-8
