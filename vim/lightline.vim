let g:lightline = {
            \ 'colorscheme': 'rosepine',
            \ 'component_function': {
            \   'filetype': 'LightlineFiletype'
            \ },
            \ 'component_expand': {
            \ 'buffers': 'lightline#bufferline#buffers'
            \ },
            \ 'active': {
            \ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ]
            \ },
            \ 'tabline': {
            \ 'left': [ ['buffers'] ],
            \ 'right': [ ['close'] ]
            \ },
            \ 'component_type': {
            \ 'buffers': 'tabsel'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' },
            \ 'component': {
            \ 'lineinfo': ' %3l:%-2v',
            \ },
            \ }

function! LightlineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? WebDevIconsGetFileTypeSymbol() : '') : ''
endfunction


" let g:lightline = {
            \ 'colorscheme': 'rosepine',
            \ 'active': {
            \ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ]
            \ },
            \ 'tabline': {
            \ 'left': [ ['buffers'] ],
            \ 'right': [ ['close'] ]
            \ },
            \ 'component_expand': {
            \ 'buffers': 'lightline#bufferline#buffers'
            \ },
            \ 'component_type': {
            \ 'buffers': 'tabsel'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' },
            \ 'component': {
            \ 'lineinfo': ' %3l:%-2v',
            \ },
            \ }
