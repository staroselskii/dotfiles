" global preferences "
set nocompatible
set nu
set t_Co=256
set mouse=a 
set termencoding=utf-8 
set clipboard=unnamedplus
set clipboard=unnamed
set undofile      

" indention "
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"highlighting"
syntax on
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set relativenumber
set hlsearch

filetype off
filetype plugin on
filetype plugin indent on

colorscheme torte
" syntax completion "

" vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

"ctags/cscope"
source ~/.vim/cscope_maps.vim
set tags=./tags;../tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
