call plug#begin()
"Seção do plugin
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'edkolev/tmuxline.vim'
Plug 'powerline/powerline'
call plug#end()

syntax enable

set number
set relativenumber
set background=dark
set mouse=a
set encoding=UTF-8

"Seção de configuração
colorscheme gruvbox

" vim-airline confs
let g:airline_theme='wombat'

" deoplete confs
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#jedi#show_docstring=1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tmuxline confs
let g:tmuxline_theme='powerline'

let mapleader="\<Space>"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
