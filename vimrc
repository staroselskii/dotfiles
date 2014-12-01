" global preferences "
set nocompatible
set nu
set t_Co=256
set mouse=a 
set termencoding=utf-8 
set clipboard=unnamedplus
set clipboard=unnamed

" indention "
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

filetype off
filetype plugin on
filetype plugin indent on

set undofile      
colorscheme torte

" syntax completion "
syntax on

let python_highlight_all = 1
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
