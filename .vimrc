syntax on
set laststatus=2
set termguicolors
set noshowmode
set tabstop=4 softtabstop=4
set number
set relativenumber
set shiftwidth=4 
set background=dark
set smartindent
set rtp+=/usr/local/opt/fzf

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'mhinz/vim-startify'

call plug#end()

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:lightline = {
      \ 'colorscheme': 'rosepine',
      \ }

map <Space> <Leader>
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
