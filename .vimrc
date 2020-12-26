filetype plugin on
syntax enable                   " Enable syntax highlighting

set laststatus=2                " Always display the status line
set autochdir                   " automatically changes directory to active one
set noerrorbells                " Turns bell sounds off
set belloff=all                 " Turns bell sounds off
set tabstop=4 softtabstop=4     " tabs 4 units
set shiftwidth=4                " shifting only 4 units instead of the default 8 i think
set expandtab                   " entering a real tab use Ctrl-V<Tab>
set smartindent                 " Smartly indents
set autoindent                  " good to turn on
set nu                          " Actiavte line number
set relativenumber              " Relative numbering
set nowrap                      " Display linesa as just one line (you have to scroll horizontally)
set smartcase                   " Works well for searches          
set noswapfile                  " Don't create swap files
set nobackup                    " Don't create backup file
set undodir=~/.vim/undodir      " Set undodirectory
set undofile                    " File that saves history and undo changes
set incsearch                   " Incremental searching
set wrapscan                    " search wraps
set ic                          " Ignores case when searhcing
set nocp                        " sets no compatibility mode (LONG LING VIM)
set wrap                        " wrap lines to fit into window
set scrolloff=5                 " 5 lines at least below or above cursor
set sidescrolloff=1             " scrolling lines text wont get confusing anymore
set linebreak                   " When wrapingto window, don't split across two lines

" Not sure what these do lol
set wildignore+=.git            
set tags=./tags,tags;$HOME
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
augroup filetypedetect
    au! BufRead,BufNewFile *.t, *.sc setfiletype c
augroup END

" Quit NERDTree when a file is opened
let g:NERDTreeQuitOnOpen=1


" ************************************************************************
"                    Shortcuts and Remaps
" ************************************************************************

" New commands
command! RefreshConfig source $MYVIMRC

" Set leader keys to comma 
let mapleader = ";"             

" Map escape to kj 
inoremap kj <Esc>
inoremap KJ <Esc>
cnoremap kj <Esc>
cnoremap KJ <Esc>
vnoremap kj <Esc>
vnoremap KJ <Esc>

" Map <F3> to edit my vimrc
nnoremap <F3> :e $MYVIMRC<CR>

" Tab to cycle buffers
nnoremap <TAB> :bn<CR>

" leader + f key to search files with fzf
nnoremap <leader>f :Files<CR>

" leader + w to save file
noremap <leader>w :w<CR>

" leader + q to save and quit file
noremap <leader>q :wq<CR>

" leader + Q to QUIT!
noremap <leader>Q :q!<CR>

" leader + d to jump to defenition if tags available
noremap <leader>d <C-]>

" leader + b to go back from defenition
noremap <leader>b <C-t>

" leader + B to go back with default VIM jump back from jump history command
noremap <leader>B <C-o>

" Remap spacebar to enter :
noremap <SPACE> :

" shortcut to compile and run C programs
noremap <leader>c :w <CR> :!clear && gcc % -o %< && ./%< <CR>

" shortcut to compile and run C++ programs
noremap <leader>l :w <CR> :!clear && g++ % -o %< && ./%< <CR>

" shortcut to compile and run Python programs
noremap <leader>p :w <CR> :!clear && python3 % <CR>

" ************************************************************************
"                   Plug Ins
" ************************************************************************

" Plug Ins 
call plug#begin('~/.vim/plugged')

    " Color schemes, nord is the best
    Plug 'arcticicestudio/nord-vim'
    Plug 'mhartington/oceanic-next'
    
    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Fuzzy finder to find files fast
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " helps with working with git 
    Plug 'tpope/vim-fugitive'

    " file explorer for the nerds aka me
    Plug 'preservim/nerdtree'
    
    " Helps to auto update tags
    Plug 'ludovicchabant/vim-gutentags'

    " C++ enhanced syntax highlighting 
    Plug 'octol/vim-cpp-enhanced-highlight'     
    
call plug#end()


" ************************************************************************
"                  Aesthetics  
" ************************************************************************

" Other options for c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1

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
