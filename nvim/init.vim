
" PLUGINS

call plug#begin('~/.vim/plugged')
 

Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tikhomirov/vim-glsl'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
 
Plug 'xolox/vim-misc'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'Raimondi/delimitMate'

Plug 'nanotech/jellybeans.vim'
Plug 'doums/darcula'

Plug 'chiel92/vim-autoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdcommenter'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
 
"Plug 'vim-scripts/DfrankUtil'
"Plug 'vim-scripts/vimprj'
"Plug 'vim-scripts/indexer.tar.gz'
 
 
"Plug 'vim-syntastic/syntastic'
 
call plug#end()


source $HOME/.config/nvim/plug-config/coc.vim

" GENERAL SETTINGS

highlight Normal ctermbg=none
highlight NonText ctermbg=none
 
filetype on
 
set nobackup
set nowritebackup
set updatetime=300
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
"set guifont=Fira\ Code:h12
set guifont=Neep\ 18
set cursorline


syntax on

"colorscheme jellybeans
let g:dracula_colorterm = 0
colorscheme darcula
set termguicolors

hi! Normal ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE

" NERDTREE 
let NERDTreeShowHidden=1 
let NERDTreeWinSize = 45
   
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" DELIMIT MATE
let delimitMate_expand_cr = 1
augroup mydelimitMate
        au!
        au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
        au FileType tex let b:delimitMate_quotes = ""
        au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
        au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1  


nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR> 

" KEY MAPPINGS
nnoremap <F2> :bp<cr>:bd #<cr> 
noremap <F4> :Autoformat<CR>
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
nmap <silent> <leader>b :TagbarToggle<CR>
nmap <F5> :CocCommand clangd.switchSourceHeader<CR>
nmap <F6> :CocCommand clangd.symbolInfo<CR>

