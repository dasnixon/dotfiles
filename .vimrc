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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'troydm/easybuffer.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"ag
"
nnoremap <leader>a :Ag -i<space>

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

" onedark - colorscheme
"
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
set background=dark
highlight Normal guibg=black

set incsearch
set hlsearch

nnoremap <Leader><space> :noh<Enter>
