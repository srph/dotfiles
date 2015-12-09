" airline 
set laststatus=2
set showtabline=2
set encoding=utf-8

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" nerdtree
map <C-b> :NERDTreeToggle<CR>

" restrict arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
