" fzf
nnoremap <leader>fg :GFiles<Cr>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fl :Lines<CR>

nnoremap <leader>af : Autoformat<CR>

nnoremap <leader>gr : GoRun<CR>
nnoremap <leader>gt : GoTest<CR>
nnoremap <leader>gf : GoTestFile<CR>

" Open new terminal
nnoremap <leader>h :terminal<CR>

" Close terminal
tnoremap <C-w>q <C-\><C-n>:q!<CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
