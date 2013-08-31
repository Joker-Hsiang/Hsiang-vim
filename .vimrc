"Joker-Hsiang vimrc


"===================================
"For pathogen.vim:auto load all plugins in .vim/bundle
"===================================

let g:pathogen_disabled = []
if !has('gui_running')
   call add(g:pathogen_disabled, 'airline')
endif


"===================================
"General Setting
"===================================

set nu                 "auto appear line number 
set nocompatible       "not compatible with the old-fashion vi mode
set bs=2               "allow backspacing over everything in insert mode
set history=50         "keep 50 lines of command line history
set ruler              "show the cursor position all the time
set autoread           "auto read when file is changed from outside

filetype off
syntax on
filetype on            "Enalbe filetype detection
filetype indent on     "Enable filetype-specific indenting
filetype plugin on     "Enable filetype-specific plugins

"auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc


syntax on              "syntax highlight
set hlsearch	       "search highlight

"=================================
"Tab setting
"=================================

set tabstop=4
set softtabstop=3 
set shiftwidth=3 
set expandtab        "replace <TAB> with spaces
     


"==================================

set clipboard=unnamed  " yank to the system register (*) by default
set showmatch          " Cursor shows matching ) and }
set showmode           " Show current mode
set wildchar=<TAB>     "start wild expansion in the command Line using <TAB>
set wildmenu           "wild char completion menu

"==================================
" ignore thes files while expanding wild chars
set wildignore=*.o,*.class,*.pyc


set autoindent         " auto indentation
set nobackup           " no *~ backup files
set incsearch          " incremental search
set copyindent         " copy the previous indentation on autoindenting
set ignorecase         " ignore case when searching
set smartcase          " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab           " insert tabs on the start of a line according to context  



"==================================
"try plug-in
"==================================

map <F5> : NERDTreeToggle<CR>
" --- SnipMate

" --- TagBar

nmap <F6> :TagbarToggle<CR>

" ---SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1



"--------------------------------
"auto compiler c++
"--------------------------------
map <F4> : call CompileRunGpp() <CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc
"---------------------------------
"auto compiler c
"---------------------------------
map <F3> :call CompileRunGcc()<CR>
func! CompileRunGcc()
   exec "w"
   exec "!gcc % -o %<"
   exec "! ./%<"
endfunc
