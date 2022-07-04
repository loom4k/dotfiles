:set number
:set autoindent
:set mouse=a

call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
call plug#end()

colorscheme palenight
let g:airline_theme="palenight"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
