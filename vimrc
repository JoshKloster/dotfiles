"COLORSCHEME
colorscheme molokai 
set t_Co=256

"SYNTAX PROCESSING
syntax enable

"SPACES AND TABS
set tabstop=4 "number of visual spaces per tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces

"UI CONFIG
set number "show line numbers
set cursorline "highlight current line
filetype indent on "load filetype-specific indent files
filetype plugin on " load filetype-specific plugin files
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when needed
set showmatch "highlight matching [{()}]

"SEARCHING
set incsearch "search as characters are entered
set hlsearch "highlight matches
set ignorecase "ignore case when searching

"MOVEMENT
"move vertically by visual line
nnoremap j gj
nnoremap k gk
"split window navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"FOLDING
set foldenable "enable folding
set foldlevelstart=10 "open most folds, by default
set foldnestmax=10 "10 nested fold max
"space open/closes folds
nnoremap <space> za 

"LEADER SHORTCUTS
" jk is escape
inoremap jk <esc> 

"VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/klen/python-mode'
call plug#end()
