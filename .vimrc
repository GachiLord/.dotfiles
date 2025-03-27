" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Enable auto indents
set autoindent
set smartindent

" Set tab width to 4 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Enable mouse support
set mouse=a

" Set the color scheme
colorscheme unokai

" Set tree-view in file manager 
let g:netrw_liststyle = 3

" Add tabs mappings
nmap <C-H> :tabprev <CR>
nmap <C-L> :tabnext <CR>

" Add buffer mappings
nmap <C-J> :bprev <CR>
nmap <C-K> :bnext <CR>
