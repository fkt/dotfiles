set backspace=indent,eol,start
set nocompatible  " don't use vi-compatible mode
set noexrc  " don't use .vimrc in current directory
set history=1000  " remember most of the commands

syntax on  " syntax highlight on
filetype plugin indent on  " load filetype plugins/indent settings

set nobackup  " use version control
set fileformats=unix,dos,mac  " support all three, in this order
set encoding=utf-8
set hidden  " change buffers w/out saving
set mouse=a  " maybe i can need it
set mousehide  " hide mouse while typing
set noerrorbells  " no noise
set wildmenu  " <TAB> completion shell-like
set wildmode=longest:full

" set number  " show line numbers
set numberwidth=4  " up to 9999 lines
set laststatus=2  " always show status line
set list  " show tabs and trailing spaces
set listchars=tab:▸\ ,trail:¬  " nice symbols
highlight NonText guifg=#4a4a59  " make it barely visible
highlight SpecialKey guifg=#4a4a59  " make it barely visible
set matchtime=4  " show 0.4s matching bracket
set showmatch  " show matching brackets
set nostartofline  " leave cursor where it was
set ruler  " show current position
set scrolloff=5  " keep 5 lines (top/bottom) when scrolling
set shortmess=aOstT  " shortens msgs to avoid 'press a key' prompt
set showcmd  " show command that is being typed
set completeopt=  " no popup menu for completion
set expandtab  " no real tabs
set shiftround  " when 3 spaces and one hits > go to 4, not 5
set tabstop=2  " real tabs are 2 spaces
set softtabstop=2  " tab and backspace are 2 spaces
set shiftwidth=2  " indent 2 spaces
" set nowrap  " do not wrap lines
set colorcolumn=100  " Show the 100th char column.
set cursorline  " Highlight current line
highlight ColorColumn ctermbg=5
set t_Co=256

set nohlsearch  " don't highlight search hits
set ignorecase  " case insensitive by default
set smartcase  " if there are caps, go case-sensitive

let mapleader = "\<Space>"

" NerdTree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" NerdCommenter
let g:NERDSpaceDelims = 1

" Tabular
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" FZF
imap <c-x><c-o> <plug>(fzf-complete-line)
map <leader>b :Buffers<cr>
map <leader>f :Files<cr>
map <leader>g :GFiles<cr>
map <leader>t :Tags<cr>

" Windows
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <S-right> <C-W>l

" Tabs - Directly to tab # with #gt
map <S-Left> :tabprev<CR>
map <S-Right> :tabnext<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
