set autoindent
set expandtab
set foldmethod=indent
set listchars=eol:$,tab:>-,trail:.
set nohlsearch
set number
set shiftwidth=4
set tabstop=4

if has('gui_running')
    set guifont=Monospace\ 11
endif

filetype plugin on
autocmd BufRead,BufNewFile *.c set tabstop=4
autocmd BufRead,BufNewFile *.c set shiftwidth=4
autocmd BufRead,BufNewFile *.c set noexpandtab
autocmd BufRead,BufNewFile *.c set foldmethod=syntax
autocmd BufRead,BufNewFile *.cpp set foldmethod=syntax
autocmd BufRead,BufNewFile *.html set syntax=htmldjango
autocmd BufRead,BufNewFile *.html set noexpandtab
autocmd BufRead,BufNewFile *.html set tabstop=2
autocmd BufRead,BufNewFile *.html set shiftwidth=2
autocmd BufRead,BufNewFile *.py set expandtab
autocmd BufRead,BufNewFile *.md set syntax=markdown
autocmd BufRead,BufNewFile *.md set tabstop=4
autocmd BufRead,BufNewFile *.md set shiftwidth=4
autocmd BufRead,BufNewFile *.js set tabstop=2
autocmd BufRead,BufNewFile *.js set shiftwidth=2
autocmd BufRead,BufNewFile *.js set foldmethod=syntax

function! b:QToggleListCharsShow()
    if exists("b:c_set_list") == 0
        let b:c_set_list = 0
    endif
    let state = { 0: "set list", 1: "set nolist" }
    execute state[b:c_set_list]
    let b:c_set_list = -(b:c_set_list - 1)
endfunction

map <F2> :echo strftime('%c')<CR>
map <F3> :!acpi -b<CR>
map <F4> :call b:QToggleListCharsShow()<CR>
