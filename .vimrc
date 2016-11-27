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
Plugin 'scrooloose/nerdcommenter'
Plugin 'https://github.com/vim-scripts/TaskList.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim' " pretty slim syntax highlighting
call vundle#end()            " required

syntax enable " Turn on color syntax highlighting
filetype plugin indent on    " required http://vi.stackexchange.com/questions/4541/vundle-filetype-plugin-indent-on-messes-with-tabwidth

" ~ end of vundle stuff ~

" Removes trailing white space
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre * :%s/\s\+$//e

"Use TAB to complete when typing words, else inserts TABs as usual.
"http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" ctrl+k toggle high visibility for the cursor
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

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

set shiftwidth=2
set expandtab " converts tabs to spaces
set tabstop=2 " makes tab two spaces
set backspace=indent,eol,start

set hlsearch " highlight search query
set incsearch " show search matches as you type

set number
set title
set undolevels=1000
set hidden " hide buffers, don't close - useful for autocomplete
set autoread " file changed outside vim, automatically read it again

let mapleader = ","

set pastetoggle=<leader>p " toggle paste special on and off
noremap <leader>n :set invnumber<CR> " toggle between line number on and off

" Buffer
nnoremap <leader>f :bnext<CR>

" NERDTree
let g:NERDTreeIgnore = ['^_build$', '^node_modules$']
nnoremap <C-t> :NERDTreeToggle<CR>

map <leader>x <Plug>NERDCommenterToggle
