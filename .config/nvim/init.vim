set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set number
set nowrap

call plug#begin('~/.custom/nvim/plugins')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
    Plug 'norcalli/nvim-colorizer.lua'    
"    Plug 'preservim/nerdtree'
call plug#end()

" coc config
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-html',
  \ 'coc-snippets',
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" set termguicolors
" lua require'colorizer'.setup()

" autocmd VimEnter * NERDTree | wincmd p
