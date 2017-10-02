colorscheme jellybeans
set nocompatible
set autoread

if system('uname -s') == "Darwin\n"
    " iterm sucks
else
    set relativenumber
    set cursorline " highlight line with the cursor
endif


" 1 tab == 4 spaces
set shiftwidth=4 " affects >> << == and automatic indentation
set tabstop=4 " how tab will be displayed
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set autoindent
autocmd Filetype go setlocal noexpandtab
autocmd Filetype ruby,eruby,yaml setlocal softtabstop=2 shiftwidth=2 tabstop=2
set mouse=a
set guioptions+=a
set number " show line numbers
set wildmenu " visual autocomplete for command menu
set laststatus=2 " always display status line
set incsearch " search as characters are entered
set hlsearch " highlight matches in search
set ic " search case insensitive
set t_Co=256
set scrolloff=5 " scroll offset, number of lines above and below the cursor
syntax on
set background=dark
filetype plugin on
filetype indent on
set showmode
set showmatch " show matching bracket
set path+=** " find method will lookup whole tree
set noeb vb t_vb= " disable beeping

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
" jk goes to next visible line, not actual textfile line
nnoremap j gj
nnoremap k gk
" select recently pasted text
nnoremap gV `[v`]
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬,
nnoremap <F3> :set list!<CR>
" jump to next error from :make
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

" in visual mode
" / will search only in selected text
" * will search for selected text in whole file
vnoremap / <Esc>/\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
vnoremap ? <Esc>?\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
vnoremap * y:let @/ = @"<CR>

" execute this line in bash
nnoremap <C-b> :.w !bash<CR>
set directory=$HOME/.vim/swapfiles//

" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

autocmd Filetype go nnoremap <F5> :w<CR>:w !go run %<CR>
autocmd Filetype python nnoremap <F5> :w<CR>:w !python %<CR>
autocmd Filetype c nnoremap <F5> :w<CR>:w !gcc -Wall -Wextra % && ./a.out<CR>
autocmd Filetype ruby nnoremap <F5> :w<CR>:w !ruby %<CR>

" if no file specified, open file explorer in vertical split
if argc() == 0
    autocmd VimEnter * 30vs .
endif

set shell=/bin/bash
