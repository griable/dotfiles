set nocompatible
filetype off
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-surround.git'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-fugitive.git'
Plugin 'stephanedemotte/beekai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'
Plugin 'queyenth/oxeded.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax enable
filetype plugin indent on    " required

au BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.jade set ft=jade

set cursorline
set expandtab
set shiftwidth=2
set tabstop=2
set number

:let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>

colorscheme oxeded
set guifont=Source\ Code\ Pro:h14
set wildignore+=*/tmp/*,/node_modules/*,*/.git/*,*.so,*.swp,*.zip
set foldmethod=syntax
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

