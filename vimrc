" install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins 
" let g:plug_url_format='git@github.com:%s.git'
call plug#begin('~/.vim/bundle')
" Plug '' 
Plug 'flazz/vim-colorschemes' 
Plug 'scrooloose/nerdtree',  { 'on': 'NERDTreeToggle' }

" markdown plugin
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
call plug#end()

" configure
hi Normal ctermfg=grey ctermbg=black
syntax on          " syntax highlight
set background=dark
" highlight Normal ctermbg=black
colorscheme solarized
highlight Normal ctermfg=grey
set nu             " show row number
set showcmd        " show input in normal mode
set scrolloff=5    " distance between cursor and bottom when scroll down 

set autoread

set ignorecase
set smartcase

set whichwrap+=<,>,h,l     " allow backspace and cursor keys to cross line boundaries
set nohlsearch
set incsearch
set gdefault       " search/replace gloabl by default

set textwidth=80

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" key map
let mapleader=" "
nmap <tab> >>
nmap <S-tab> <<
vmap <tab> >gv
vmap <S-tab> <gv

nnoremap <leader>o mto<Esc>`t
nnoremap <leader>O mtO<Esc>`t

nnoremap <silent> g; g;zz
nnoremap <silent> g, g,zz

