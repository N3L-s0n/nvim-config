" Try to load minpac.
packadd minpac

if !exists('g:loaded_minpac')
    " minpac is not available.

    " Settings for plugin-less environment.
else
    " minpac is available.
    call minpac#init()
    " call minpac#add('k-takata/minpac', {'type': 'opt'})
    " call minpac#add('codota/tabnine-vim', {'type':'start'})
    " call minpac#add('neg-serg/neg', {'type': 'start'})
    " call minpac#add('wojciechkepka/vim-github-dark')
    " call minpac#add('neovim/nvim-lspconfig')

    " call minpac#add('neoclide/coc.nvim')
    " Additional plugins here.

    " Plugin settings here.
endif

" Common settings here.

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Copy data between instances
set clipboard=unnamedplus

set ttimeoutlen=10

" Show line numbers
set number

" Don't ask for ! when changing buffers
set hidden

set termguicolors
set background=dark
" colorscheme ghdark

" ============================
" Key mappings
" ============================
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" coc extensions
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css',
"                               'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

