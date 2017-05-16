" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible

" enables syntax highlighting by default.
syntax on

" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" load indentation rules and plugins according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

" Append vim environment variables
let $PATH .= ':~/bin'


" ============================================================================ "
"                                   Plugin
" ============================================================================ "
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Autocomplete
Plug 'Shougo/neocomplete.vim'

" Synyax checker
Plug 'vim-syntastic/syntastic'
"Plug 'neomake/neomake'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'

Plug 'Yggdroot/indentLine'
"Plug 'scrooloose/nerdtree'
"Plug 'majutsushi/tagbar'

Plug 'vim-scripts/vim-auto-save'
Plug 'ervandew/supertab'
"Plug 'antoyo/vim-licenses'
"Plug 'luochen1990/rainbow'

" git
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

"" (lisp(s))
"Plug 'wlangstroth/vim-racket'

"" sml
"Plug 'jez/vim-better-sml'

" haskell
"Plug 'eagletmt/neco-ghc'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'jaspervdj/stylish-haskell'
"Plug 'neovimhaskell/haskell-vim'    " Syntax Highlighting and Indentation

" python
Plug 'davidhalter/jedi-vim', {'do' : 'git submodule update --init'}

call plug#end()


" =========== Syntax checker =========== "
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_scala_checkers = ['']        " diasbled
let g:syntastic_python_checkers = ['']
"" Neomake
"autocmd! BufWritePost * Neomake

" =========== IndentLine =========== "
"let g:indentLine_color_gui = '#A4E57E'     " for gvim
let g:indentLine_char = '┆'     " indentLine char, '¦', '┆', '︙' or else.

" =========== Supertab =========== "
" from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

" =========== vim-auto-save ==========="
let g:auto_save = 1                 " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1   " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
"let g:auto_save_silent = 1        " do not display the auto-save notification

" =========== Neocomplete ==========="
" see: https://github.com/Shougo/neocomplete.vim#configuration-examples
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()


" =========== python ==========="
" disable docstring window popup during completion
autocmd FileType python setlocal completeopt-=preview
" python syntax
let b:python_version_2 = 0
let python_highlight_all = 1


" ============================================================================ "
"                               Default setting
" ============================================================================ "

set wrap            " 设置自动折行
set expandtab       " 使用空格表示缩进（代替制表符）

set tabstop=4       " setting tab to 4 space
set softtabstop=4   " 编辑模式时退格键退回缩进长度
set shiftwidth=4    " 每级缩进长度
set autoindent
set number          " show lines
set showcmd	        " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a         " Enable mouse usage (all modes)

set ruler           " 在状态行上显示光标所在位置的行号和列号
set errorbells
set showcmd
set history=1000
set undolevels=1000
set linebreak           " 单词不换行
set cursorline          " 启用高亮当前行
set scrolloff=5         " 设置光标与底部保持行数
set autochdir           " 打开文件时， 自动改变当前工作目录
set foldmethod=indent   " 根据缩进折叠
set foldlevel=99        " 默认展开所有代码
"set list                " 显示 Tab 和 空格键, 回车

" font and enconding
set encoding=utf-8
if (has("gui_running"))
    set guifont=DejaVu\ Sans\ Mono\ 14
endif

set timeoutlen=1000 ttimeoutlen=0    " fix esc delay in vim <https://www.johnhawthorn.com/2012/09/vi-escape-delays>


" ============================================================================ "
"                               Specific filetype
" ============================================================================ "

" `*sc` => scala
au BufReadPost *.sc set filetype=scala

" 在80列的地方加条竖线
autocmd FileType haskell,scheme,asm,c,python,cpp,java,ruby,scala setlocal colorcolumn=80

" Automatically removing all trailing whitespace
autocmd FileType haskell,scheme,sml,asm,c,python,cpp,java,ruby,scala autocmd BufWritePre <buffer> :%s/\s\+$//e

autocmd FileType html,css,javascript setlocal nowrap
"autocmd FileType ruby setlocal sw=2 sts=2 ts=8

"" 超过 80 个字符，自动换行(相当于加个回车)
"autocmd FileType Markdown setlocal tw=80 fo+=Mm


" ============================================================================ "
"                               Interface
" ============================================================================ "

" start window
""set lines=29 columns=98

" language(en)
set langmenu=en_US
let $LANG='en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"set guioptions-=m       " remove menubar
set guioptions-=T        " remove toolbar
"set guioptions-=r       " 不显示右侧滚动条
set guioptions-=l

" Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Set Color Scheme
if has("gui_running")
    colorscheme ralor
else
    set t_Co=256
    colorscheme luna_term
endif

set wildmenu
set wildmode=longest,list,full

" ============================================================================ "
"                               hot_key(shortcut_key)
" ============================================================================ "

autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
autocmd FileType python map <buffer> <F9> :!python %:p<CR>
autocmd FileType python map <buffer> <F5> :!python3 %:p<CR>

autocmd FileType c map <buffer> <F8> :!gcc -Wall %:p -o %<<CR>
autocmd FileType c map <buffer> <F9> :!./%<<CR>

autocmd FileType haskell map <buffer> <F7> :%!stylish-haskell<CR>
autocmd FileType haskell map <buffer> <F9> :!cabal exec ghci %:p<CR>

autocmd FileType scala map <buffer> <F9> :!scala %:p<CR>

autocmd FileType sml map <buffer> <F9> :!rlwrap sml %:p<CR>

""autocmd FileType scheme map <buffer> <F9> :!guile %:p<CR>
autocmd FileType racket map <buffer> <F8> :!racket -f %:p -il xrepl<CR>
autocmd FileType racket map <buffer> <F9> :!racket %:p<CR>

" plugin
map <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

nnoremap > gt       " Next tab
nnoremap < gT       " Prior tab

" Search for visually selected text.
" visually select then type `//` to search (press `n` to search for the next)
" see: http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>

