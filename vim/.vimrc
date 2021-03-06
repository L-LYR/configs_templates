if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'Yggdroot/indentLine'
	Plug 'sheerun/vim-polyglot'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox 
set background=dark

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set number

set cursorline
set cursorcolumn

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set showmatch

set tabstop=4
set shiftwidth=4
set autoindent

set paste

set laststatus=2
set ruler

filetype plugin indent on

autocmd BufWritePost $MYVIMRC source $MYVIMRC

"https://vimjc.com/vimrc-config.html
