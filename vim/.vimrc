set nocompatible

let mapleader="\<Space>"

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package manager
Plugin 'VundleVim/Vundle.vim'

" Color theme
Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'


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

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdcommenter'

Plugin 'posva/vim-vue'

Plugin 'mileszs/ack.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'

Plugin 'vimwiki/vimwiki'

Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on


colorscheme gruvbox
set background=dark
set laststatus=2
set noshowmode

let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ }

" Default vim setup
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set number
set relativenumber

" Add the 80 character markup line
let &colorcolumn="80,".join(range(120,999),",")

nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <leader>uf :UndotreeFocus<CR>

nnoremap <leader>e :Explore<CR>

nnoremap <leader>n :setl rnu!<CR>
nnoremap <leader>t :TagbarToggle<CR>

nnoremap <leader>] :split <CR>:exec("tag ".expand("<cword>"))<CR>

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" 80+
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v./

" Save
nnoremap <Leader>s :w<CR>

let g:ale_lint_on_text_changed="never"

" Save the swap file somewhere else
set directory=~/.vim/swapdir//

let g:netrw_banner = 0
let g:netrw_liststyle = 3

syntax on
