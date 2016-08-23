"DONT BE COMPATIBLE WITH VI
set nocompatible

"INCLUDE PACKAGES FILE
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"COLORSCHEME
colorscheme molokai 
set t_Co=256

"SYNTAX PROCESSING
syntax enable

"SPACES AND TABS
set tabstop=2 "number of visual spaces per tab
set softtabstop=2 "number of spaces in tab when editing
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

"SYNTASTIC
"RESEARCH AND COMMENT LINES
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Check c++ with c++11
let g:syntastic_cpp_compiler_options = " -std=c++11"
