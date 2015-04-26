" global preferences "
set nocompatible
set nu
set t_Co=256
set mouse=a 
set termencoding=utf-8 
set clipboard=unnamedplus
set clipboard=unnamed

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \

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
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set relativenumber
set hlsearch

filetype off
filetype plugin on
filetype plugin indent on

colorscheme torte

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

"ctags/cscope
source ~/.vim/cscope_maps.vim
set tags=./tags;/
"nmap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"nmap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nmap <C-h> :nohl<CR>
nmap <C-x> :set list!<CR>

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
"vim-airline

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
set hidden

" To open a new empty buffer
" This replaces :tabnew 
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
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
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

if v:version >= 600
  filetype plugin on
  filetype indent on
else
  filetype on
endif

if v:version >= 700
  set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
  let OmniCpp_GlobalScopeSearch   = 1
  let OmniCpp_DisplayMode         = 1
  let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
  let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
  let OmniCpp_ShowAccess          = 1 "show access in pop-up
  let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
  set completeopt=menuone,menu,longest
endif
