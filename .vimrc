colorscheme pencil

syntax enable

set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs become spaces

set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set textwidth=80

" highlight text that is over 80 characters for the line
highlight Overlength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

filetype indent on " load filetype-specific indent files

set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw the screen only when we need to
set showmatch " highlight matching [{()}]

set incsearch " search as characters are entered
set hlsearch " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

" move vertically by visuall line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap , 0
nnoremap . $

nnoremap 0 <nop>
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap gV `[v`] " hightlight last inserted text

" edit vimrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <leader>s :mksession<CR> " save session

nnoremap <leader>a :Ag " open ag.vim

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
fun! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfun

autocmd FileType php,python,javascript,markdown autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

