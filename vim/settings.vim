set encoding=utf-8
set nocompatible
set laststatus=2
set termguicolors
set noshowmode
set tabstop=4 softtabstop=4
set number
set relativenumber
set shiftwidth=4
set background=dark
set autoindent
set expandtab
set wrap
" syntax enable
syntax on
set showcmd
set hlsearch
set scrolloff=8
set splitbelow
filetype plugin indent on

let mapleader = " "

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

function! LightlineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? WebDevIconsGetFileTypeSymbol() : '') : ''
endfunction
