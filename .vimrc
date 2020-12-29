"   < Jay's vimrc  >
"    -------------
"         \   ^__^
"          \  (oo)\_______
"             (__)\       )\/\
"                 ||----w |
"                 ||     ||
"
"                                                          

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
set nu                          " Activate line number
set relativenumber              " Relative numbering
set nowrap                      " Display linesa as just one line (you have to scroll horizontally)
set noswapfile                  " Don't create swap files
set nobackup                    " Don't create backup file
set undodir=~/.vim/undodir      " Set undodirectory
set undofile                    " File that saves history and undo changes
set incsearch                   " Incremental searching
set wrapscan                    " search wraps
set ic                          " Ignores case when searching
set nocp                        " sets no compatibility mode (LONG LING VIM)
set wrap                        " wrap lines to fit into window
set scrolloff=5                 " 5 lines at least below or above cursor
set sidescrolloff=1             " scrolling lines text wont get confusing anymore
set linebreak                   " When wrapingto window, don't split across two lines
let g:NERDTreeQuitOnOpen=1      " Quit NERDTree when a file is opened

" ************************************************************************
"                    Auto commands! 
" ************************************************************************


" ************************************************************************
"                    Shortcuts and Remaps
" ************************************************************************

" New commands
command! RefreshConfig source $MYVIMRC
command! Editvim :e ~/.vimrc

" Set leader keys to space 
let mapleader = " "             

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
nnoremap <leader>f :FZF ../..<CR>

" leader + r key to reload vimrc
nnoremap <leader>r :source % <CR>

" leader + t key to open a terminal
nnoremap <leader>t :ter <CR> 

" leader + R key to reload file
nnoremap <leader>R :e <CR>

" leader + w to save file
noremap <leader>w :w<CR>

" leader + q to save and quit file
noremap <leader>q :wq<CR>

" leader + Q to QUIT!
noremap <leader>Q :q!<CR>

" leader + e to open NERDTree file (e)xplorer
noremap <leader>e :NERDTree<CR>

" leader + d to jump to defenition if tags available
noremap <leader>d <C-]>

" leader + b to go back from defenition
noremap <leader>b <C-t>

" leader + B to go back with default VIM jump back from jump history command
noremap <leader>B <C-o>

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
    Plug 'szw/vim-tags'

    " C++ enhanced syntax highlighting 
    Plug 'octol/vim-cpp-enhanced-highlight'     

    " Auto complete 
    Plug 'vim-scripts/AutoComplPop'
    
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
