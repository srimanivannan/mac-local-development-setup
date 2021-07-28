call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'udalov/kotlin-vim'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf'
Plug 'cloudhead/neovim-fuzzy'
Plug 'elmcast/elm-vim'
Plug 'morhetz/gruvbox'
Plug 'AlessandroYorba/Alduin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zeekay/vim-beautify'
call plug#end()
syntax on
colorscheme gruvbox
set number
set hidden
let NERDTreeMapOpenInTab='t'
nnoremap <silent> <C-k>b :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1 
let g:deoplete#enable_at_startup = 1
set clipboard=unnamedplus 
set completeopt=longest,menuone
set expandtab
set ignorecase
set nowrap
set shiftwidth=4
set smartcase
set tabstop=4
tnoremap <Esc> <C-\><C-n>
nnoremap <C-p> :FZF<CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
let g:loaded_matchparen=1
set splitright
set splitbelow