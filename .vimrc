set number
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set cursorline
set cscopetag
set cscopequickfix=s-,c-,i-,t-,e-

set wildmenu wildmode=list:longest,full

"netrw
:let g:netrw_listsyle=3
:let g:netrw_oreview=1


" auto reload file
set autoread

" beep off
set visualbell t_vb=
set noerrorbells

" ( )
set showmatch
set showcmd

set list
set listchars=tab:>\ ,trail:-,nbsp:%

" search
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nnoremap <ESC><ESC> :nohlsearch<CR>

:inoremap <silent> jj <ESC>

" encoding
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp

" quickfix
:autocmd QuickFixCmdPost cscope cwindow
:autocmd QuickFixCmdPost *grep* cwindow

:set statusline=%F%m%r%h%w\ %=[FORMAT=%{&ff}]\ENC=%{&fileencoding}\\[%v,%l/%L]

:set laststatus=2
:set scrolloff=3

set nobackup

" cscope
:command Ccc cs f c <cword>
:command Cgc cs f g <cword>
:command Csc cs f s <cword>
:command Cec cs f e <cword>

:nmap <c-\>c :cs f c <C-R>=expand("<cword>")<CR><CR>
:nmap <c-\>g :cs f g <C-R>=expand("<cword>")<CR><CR>
:nmap <c-\>s :cs f s <C-R>=expand("<cword>")<CR><CR>
:nmap <c-\>e :cs f e <C-R>=expand("<cword>")<CR><CR>

if filereadable("cscope.out")
    cs add cscope.out
endif


nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>

:command Cd cd %:h
:command Diffthis windo diffthis


" for global
"if filereadable("GTAGS")
"  let GtagsCscope_Auto_Load = 1
"endif

"function! TagGen()
"            Cd
"            !gtags -v 
"            GtagsCscope
"endfunction
"command Tg :call TagGen()

:command Vg vimgrep <cword> *
set clipboard=unnamed,autoselect

colorscheme torte

cmap w!! w !sudo tee > /dev/null %
