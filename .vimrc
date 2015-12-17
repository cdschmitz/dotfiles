" Vundle config
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
" Keep Plugin commands between vundle#begin/end
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
call vundle#end()
filetype plugin indent on  " required

filetype indent on
syntax on
set modeline
set modelines=5
set number
set ruler
set showcmd
set scrolloff=5
set history=150
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set t_vb=
set visualbell
set incsearch
set nohlsearch

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

abbr fn function

command DW %s/\s\+$//g
command MD5 .!md5 -q %
command SHA .!shasum -a 256 %

nore ; :
nore : ;
ca qi qa!
vnoremap v <Esc>^v$h
vnoremap <silent> <space> zf
nnoremap Q <nop>
nnoremap <silent> <space> za
inoremap jf <Esc>

" Window movement
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" MiniBufExpl
nnoremap <silent> <Tab> :MBEbn<CR>
nnoremap <silent> <S-Tab> :MBEbp<CR>

" Code folding
" autocmd BufWrite *.* mkview
" autocmd BufRead *.* silent loadview

" Mustache abbreviations
let g:mustache_abbreviations = 1
let g:vim_json_syntax_concealcursor = 0

" Syntastic
command SR SyntasticReset
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = {
    \ "mode": "passive"}

" HTML/Javascript/JSX
autocmd FileType html,htmldjango,javascript,javascript.jsx inoremap cslg console.log();<Esc>hi
autocmd FileType html,htmldjango,javascript,javascript.jsx inoremap db; debugger;
autocmd FileType html,htmldjango,javascript,javascript.jsx set tabstop=2 shiftwidth=2
autocmd FileType html,htmldjango inoremap dtt {%  %}<Esc>2hi
autocmd FileType html,htmldjango inoremap dbr {{  }}<Esc>2hi

" Python
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set nosmartindent
autocmd FileType python inoremap trq """"<Esc>xYpO
autocmd FileType python inoremap ipst import ipdb; ipdb.set_trace()<Esc>
" au BufRead,BufNewFile *.py,*.pyw set tabstop=4
" autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
" autocmd FileType python match OverLength /\%>79v.\+/
