" vundle
" https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" :PluginInstall :PluginUpdate :PluginClean
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-airline/vim-airline'
Plugin 'chase/vim-ansible-yaml'
call vundle#end()

syntax enable
filetype plugin indent on

" Removes trailing white space
autocmd BufWritePre * :%s/\s\+$//e

"Use TAB to complete when typing words, else inserts TABs as usual.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" toggle high visibility for the cursor
nnoremap <leader>k :call HighlightNearCursor()<CR>
function! HighlightNearCursor()
  if !exists("s:highlightcursor")
    match Todo /\k*\%#\k*/
    set cursorline
    let s:highlightcursor=1
  else
    match None
    set nocursorline
    unlet s:highlightcursor
  endif
endfunction

set ai
set si
set wrap

set shiftwidth=2
set expandtab
set tabstop=2
set backspace=indent,eol,start

set hlsearch
set incsearch

set number
set title
set undolevels=1000
set hidden
set autoread

set colorcolumn=120

" Further search depth for ctrlp
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=0


let mapleader = ","

set pastetoggle=<leader>p
noremap <leader>n :set invnumber<CR>

noremap x :X<CR>
" Buffer
nnoremap <leader>f :bnext<CR>

let g:NERDTreeIgnore = ['^_build$', '^node_modules$']
nnoremap <leader>t :NERDTreeToggle<CR>

map <leader>x <Plug>NERDCommenterToggle

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = airline#section#create(['%p%%', 'linenr', ':%c'])
let g:airline_left_sep=''
let g:airline_right_sep=''
let t_Co=256
