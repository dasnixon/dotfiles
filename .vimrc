set nocompatible
filetype off

let mapleader = ','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'troydm/easybuffer.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-rails'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-sensible'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'jparise/vim-graphql'
Plugin 'prettier/vim-prettier'
Plugin 'xolox/vim-misc'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'nordtheme/vim'

"ag
"
nnoremap <leader>a :Ag -i --hidden<space>

"ctrlp
"
let g:ctrlp_working_path_mode = ''

"easybuffer
"
nmap <leader>be :EasyBufferToggle<cr>

"indent-guides
"
let g:indent_guides_enable_on_vim_startup = 1

"nerdtree
"
nmap <tab> :NERDTreeToggle<cr>

nnoremap <Leader><space> :noh<Enter>

"gutentags
"
let g:gutentags_ctags_tagfile = 'gutentags'

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on

set incsearch
set hlsearch
set relativenumber
set ruler
set textwidth=119
set colorcolumn=119
set autoread

set undodir=~/.vim/undo-dir
set undofile

highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" https://vi.stackexchange.com/a/456
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd BufRead,BufNewFile *.scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb,*.js,*.ts match BadWhitespace /\s\+$/

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set encoding=utf-8
set background=dark

colorscheme onedark
