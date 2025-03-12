" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Enable auto indents
set autoindent
set smartindent

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse support
set mouse=a

" Set the color scheme
colorscheme unokai

" Add tabs mappings
nmap <C-H> :tabprev <CR>
nmap <C-L> :tabnext <CR>

" Add buffer mappings
nmap <C-J> :bprev <CR>
nmap <C-K> :bnext <CR>
