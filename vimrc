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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/vim-auto-save'
Plug 'ervandew/supertab'
Plug 'antoyo/vim-licenses'
"Plug 'luochen1990/rainbow'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"" (lisp(s))
"Plug 'wlangstroth/vim-racket'

"" sml
"Plug 'jez/vim-better-sml'

" haskell
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
Plug 'jaspervdj/stylish-haskell'
Plug 'neovimhaskell/haskell-vim'    " Syntax Highlighting and Indentation

call plug#end()

" =========== Airline =========== "
" see: https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='kolor'
"let g:airline_theme='bubblegum'

let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"
"let g:airline_left_sep = '▶'
"let g:airline#extensions#tagbar#flags = 's'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '>'

set laststatus=2
let g:airline#extensions#tabline#enabled = 1        " enable smarter tab line
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

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

" ===========  haskell ==========="
"let g:ghcmod_hlint_options = ['--ignore=Redundant $']

" see: https://github.com/eagletmt/ghcmod-vim/wiki/Customize#auto-checking-on-writing
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
"autocmd BufWritePost *.hs call s:check_and_lint()
"function! s:check_and_lint()
"  let l:qflist = ghcmod#make('check')
"  call extend(l:qflist, ghcmod#make('lint'))
"  call setqflist(l:qflist)
"  cwindow
"  if empty(l:qflist)
"    echo "No errors found"
"  endif
"endfunction

" haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" tagbar
" see: https://github.com/majutsushi/tagbar/wiki#haskell
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }


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
set showcmd		      " Show (partial) command in status line.
set showmatch		    " Show matching brackets.
set ignorecase		  " Do case insensitive matching
set smartcase		    " Do smart case matching
set incsearch		    " Incremental search
set autowrite		    " Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		      " Enable mouse usage (all modes)

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
    set guifont=DejaVuSansMonoForPowerline\ Nerd\ Font\ 13
    "set guifont=DejaVu\ Sans\ Mono\ 14
    "set guifontwide=AR\ PL\ UKai\ CN\ 14        " 中文字体
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
map <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

nnoremap > gt       " Next tab
nnoremap < gT       " Prior tab

" Search for visually selected text.
" visually select then type `//` to search (press `n` to search for the next)
" see: http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>


" ============================================================================ "
"                                   other
" ============================================================================ "

" ========== auto fcitx ==========
"From: https://wiki.archlinux.org/index.php/Fcitx_%28%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87%29#Vim
" 效果不是很好
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
"autocmd InsertEnter * call Fcitx2zh()
" ========== auto fcitx end ==========
