" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Allow jump between unwritten buffers
set hidden

" Enable auto indents
set autoindent
" set smartindent

" Set tab width to 4 spaces
set expandtab
set tabstop=2
set shiftwidth=2

" Show tabs as special chars
set list
set listchars=tab:>-

" set escape-time for normal usage
set timeoutlen=10

" Fix makefiles' tabs
:autocmd FileType make set noexpandtab

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
