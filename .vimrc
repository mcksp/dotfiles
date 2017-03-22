colorscheme jellybeans
set relativenumber 
set shiftwidth=4
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set autoindent
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



nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
