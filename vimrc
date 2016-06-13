set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mhartington/oceanic-next'
Plugin 'blueyed/vim-diminactive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
"
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

set tabstop=2
set shiftwidth=2
set expandtab
set number
set nowrap
set laststatus=2

set background=dark
let base16colorspace=256
colorscheme base16-summerfruit

set listchars=eol:¬,tab:‣\ ,trail:.

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:jsx_ext_required = 0

let mapleader = " "

noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-w> <c-w><c-w>

nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> <leader>l :set list!<cr>

noremap <c-n> :NERDTreeToggle<cr>

if has("gui_running")
  set background=dark
  set guifont=Fira\ Code:h12
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
endif

set timeoutlen=1000 ttimeoutlen=0
