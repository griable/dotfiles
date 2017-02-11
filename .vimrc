set nocompatible
filetype off
syntax enable

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eddsteel/vim-vimbrant'
Plug 'junegunn/vim-easy-align'
Plug 'hail2u/vim-css3-syntax'
Plug 'lumiliet/vim-twig'
Plug 'mattn/emmet-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'sirver/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/loremipsum'
Plug 'vim-syntastic/syntastic'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer' }
call plug#end()

" Enable filetype plugins
filetype plugin on
filetype indent on

set cursorline
set expandtab
set number
set shiftwidth=2
set tabstop=2

" Set mapleader to spacebar
:let mapleader = " "

" NERDTree configuration
map <Leader>n :NERDTreeToggle<CR>

" Airline configuration
let g:airline#extensions#tabline#enabled = 1

if (has("termguicolors"))
 set termguicolors
endif

" Enables code folding based on the syntax file
set foldmethod=syntax
set nofoldenable

" Open split panes to right and bottom
set splitbelow
set splitright

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ctrl p search options
let g:ctrlp_custom_ignore = '\v[\/]\.(.git|.hg|.svn|public|vendor|node_modules)$'

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Quick buffer handling
nnoremap gd :bd<CR>
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>

" Quick save
nnoremap <Leader>s :w<CR>

" Toggle folds using comma
nnoremap <,> za

" Quick edit VIMRC
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" tmp filed handling
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

" Autocomplete hyphens
set iskeyword+=-

colorscheme vimbrant
