" global preferences "
colorscheme torte
set nocompatible
set nu
set t_Co=256
set mouse=a 
set termencoding=utf-8 
set clipboard=unnamedplus
set clipboard=unnamed

" Remember info about open buffers on close
set viminfo^=%

" Backup
set undofile      
set noswapfile
set nobackup

" Sounds
set noerrorbells
set novisualbell

" search 
set smartcase
set ignorecase
set incsearch
set showmatch

"indention
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"highlighting
syntax on
set relativenumber
set hlsearch

filetype off
filetype plugin on
filetype plugin indent on
filetype indent on

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

nmap <C-h> :nohl<CR>

nmap <C-x> :set list!<CR>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'lyuts/vim-rtags'

"vim-airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" To open a new empty buffer
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"NERDTree
let NERDTreeIgnore = ['\.pyc$']

"CtrlP
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pyc)$',
\}

" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
