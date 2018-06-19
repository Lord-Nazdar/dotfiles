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

" Airline (powerline)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Linter
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on


colorscheme nord
set laststatus=2
set noshowmode
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1

" Default vim setup
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set number
set relativenumber

" 80+
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v./

" Save
nnoremap <Leader>s :w<CR>

let g:ale_lint_on_text_changed="never"

syntax on
