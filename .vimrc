colorscheme jellybeans
set nocompatible
set relativenumber 
set autoread

set shiftwidth=4
set softtabstop=4 "number of spaces in tab when editing
set tabstop=4
set expandtab "tabs are spaces
set autoindent
autocmd Filetype go setlocal noexpandtab
set mouse=a
set guioptions+=a
set number "show line numbers
set wildmenu "visual autocomplete for command menu
set laststatus=2
set incsearch "search as characters are entered
set hlsearch "highlight matches in search
set ic "search case insensitive
set cursorline "highlight line with the cursor
set t_Co=256
set scrolloff=5
syntax on
set background=dark
set nocompatible
filetype plugin on
filetype indent on
set showmode
set showmatch
set path+=**

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬,
nnoremap <F3> :set list!<CR>
nnoremap <C-j> :cn<CR>
nnoremap <C-k> :cp<CR>
nnoremap <C-b> :.w !bash<CR>
set directory=$HOME/.vim/swapfiles//

autocmd Filetype go nnoremap <F5> :w<CR>:w !go run %<CR>
autocmd Filetype python nnoremap <F5> :w<CR>:w !python %<CR>
autocmd Filetype c nnoremap <F5> :w<CR>:w !gcc -Wall -Wextra % && ./a.out<CR>
