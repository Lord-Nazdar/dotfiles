set nocompatible

let mapleader="\<Space>"

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package manager
Plugin 'VundleVim/Vundle.vim'

" Color theme
Plugin 'arcticicestudio/nord-vim'

" Editor Config
Plugin 'editorconfig/editorconfig-vim'

" Status line
Plugin 'itchyny/lightline.vim'

" Linter
Plugin 'w0rp/ale'

" Undo tree
Plugin 'mbbill/undotree'

" Tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" Start screen
Plugin 'mhinz/vim-startify'

call vundle#end()
filetype plugin indent on


colorscheme nord
set laststatus=2
set noshowmode

let g:lightline = {
\ 'colorscheme': 'jellybeans',
\ }

" Default vim setup
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set number
set relativenumber

nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <leader>uf :UndotreeFocus<CR>

nnoremap <leader>e :Explore<CR>

" 80+
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v./

" Save
nnoremap <Leader>s :w<CR>

let g:ale_lint_on_text_changed="never"

syntax on
