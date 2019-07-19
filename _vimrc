"==================================================
" Map Setting
"==================================================
nmap ,s :source D:\Utils\Configurations\Vim/_vimrc<cr>
nmap ,v :e D:\Utils\Configurations\Vim/_vimrc<cr>
nmap ,q :q!<cr>

map <F2> :vs ./<CR>
map <F3> :sp ./<CR>
map <F4> :q!<CR>
map <F5> :set syntax=spice<CR>
map <F6> :set syntax=verilog<CR>
map <F7> :set syntax=tcl<CR>
map <F8> :set syntax=skill<CR>
map <C-Left>  <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n>     <Esc>:tabnew<CR>

"==================================================
" Visual Setting
"==================================================
colorscheme torte
syntax  on
set guifont=Hack:h10
set linespace=2
set nocursorcolumn
set nocursorline
set laststatus=2
set incsearch
set lazyredraw
set linebreak
set nolist
"set list listchars=tab:≫\ ,trail:·
set mouse=a
set mousehide
set number
set numberwidth=5
"set pumheight=x
"set rightleft
set ruler
"set scroll=10
"set shiftwidth=8
set showbreak=+++\ 
set showcmd
set showmatch
set showtabline=1
set sidescroll=4

set nowrap
set sidescroll=2
set sidescrolloff=10    " 좌우 스크롤 offset 설정
"set list listchars+=extends:>,precedes:<    " 왼쪽 스크롤이 필요한 경우 <, 오른쪽 스크롤이 필요한 경우 > 를 보여준다.nowrap

"==================================================
" Editing
"==================================================
set autoindent
set cindent
set smartindent
set smarttab
"set expandtab tabstop=4
set noexpandtab
set mps+=<:>
set nf=alpha,octal,hex,bin
"set omnifunc=syntaxcomplete#Complete
"set operatorfunc
"set statusline
"set tabline

"==================================================
" Environment
"==================================================
set noautochdir
set autoread
set background=dark
"set background=light
set backspace=indent,eol,start
set backup backupdir=./
set nocompatible
set confirm
set dict=D:\Utils\Configurations\_vimdic
set hlsearch
set history=100
"set ignorecase
"set smartcase
set noignorecase
set loadplugins

"==================================================
" Functions
"==================================================
function! FontSizePlus ()
    let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole + 1
    let l:new_font_size = ':h'.l:gf_size_whole
    let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
endfunction

function! FontSizeMinus ()
    let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole - 1
    let l:new_font_size = ':h'.l:gf_size_whole
    let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
endfunction

if has("gui_running")
    nmap z[ :call FontSizeMinus()<CR>
    nmap z] :call FontSizePlus()<CR>
endif

