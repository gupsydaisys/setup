" Downloads
"    https://github.com/ggreer/the_silver_searcher

" vundle stuff
" see :h vundle for more details or wiki for FAQ
" https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

" required
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
" re: http://stackoverflow.com/questions/27750874/installing-vundle-for-vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required

filetype plugin indent on    " required
"filetype plugin on

" ~ end of vundle stuff ~

syntax on
syntax enable

" Removes trailing white space
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre * :%s/\s\+$//e

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

set shiftwidth=2
set expandtab " converts tabs to spaces
set tabstop=2 " makes tab two spaces
set backspace=indent,eol,start

set hlsearch " highlight search query
set incsearch " show search matches as you type

set pastetoggle=<C-p> " toggle paste special on and off
nnoremap <C-n> :set invnumber<CR> " toggle between line number on and off
set number
set title
set undolevels=1000
set hidden " hide buffers, don't close - useful for autocomplete
set autoread " file changed outside vim, automatically read it again

" Buffer
nnoremap <C-f> :bprevious<CR>
nnoremap <C-b> :bnext<CR>
nnoremap <C-d> :bdelete<CR>

" NERDTree
let g:NERDTreeIgnore = ['^_build$', '^node_modules$']
nnoremap <C-t> :NERDTreeToggle<CR>

