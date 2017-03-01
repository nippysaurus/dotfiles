set enc=utf-8
set nu
set tabstop=2
set sts=2
set shiftwidth=2
set expandtab
set ruler
set scrolloff=5
set autoindent
set novisualbell
set list
set nowrap
set autoread
set hlsearch
set incsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set nobackup

syntax on
filetype on
filetype plugin on
filetype indent off

set listchars=tab:▸\ 

map <leader>t :w<cr>:!ruby -Itest %<cr>
map <leader>r :w<cr>:!rspec %<cr>
map <leader>n :w<cr>:!node %<cr>
"map <C-\> :CtrlPTag<cr>

" strip trailing whitespace
map <leader>w :%s/\s\+$//e<cr>

:command! Blame execute "!git blame % | less +" . line(".") . " -j 10"
:command! CreateTags !ctags .
