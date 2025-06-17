let g:ale_linters = {
            \ 'verilog': ['verilator'],
            \ 'vhdl': ['gvhdl'],
            \ }

" let g:ale_fix_on_save = 1
" let g:ale_sign_error = 'x'
" let g:ale_sign_warning = '!'

let g:syntastic_vim_checkers = ['vint']

let g:clang_library_path='/usr/lib/llvm-20/lib'

let g:formatterpath = ['/usr/bin/clang-format']

let g:cpp_class_scope_highlight = 1

let g:rainbow_active = 1

let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "go", "rs", "zig"],
		\'#': ['py', 'sh'],
		\'"': ['vim'],
		\}
