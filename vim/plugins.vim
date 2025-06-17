call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'rose-pine/vim'
Plug 'Vimjas/vint'
Plug 'LunarWatcher/auto-pairs', {'branch': 'develop'}
Plug 'vim-autoformat/vim-autoformat'
Plug 'rip-rip/clang_complete'
Plug 'davidhalter/jedi-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ziglang/zig.vim'
Plug 'tribela/vim-transparent'
Plug 'KarimElghamry/vim-auto-comment'

call plug#end()
