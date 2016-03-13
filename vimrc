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

" Pathogen Runtime Path Manipulation
execute pathogen#infect()


" ============================================================================ "
"                               Default setting
" ============================================================================ "

set tabstop=4       " setting tab to 4 space
set softtabstop=4   " 编辑模式时退格键退回缩进长度
set wrap            " 设置自动折行
set shiftwidth=4    " 每级缩进长度
set expandtab       " 使用空格表示缩进（代替制表符）
" set list          " 显示 Tab 和 空格键, 回车
set number          " show lines
set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set autoindent
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

" font and enconding
set encoding=utf-8
if (has("gui_running"))
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 14
    set guifont=DejaVu\ Sans\ Mono\ 14
    " set guifontwide=AR\ PL\ UKai\ CN\ 14        " 中文字体
endif


" ============================================================================ "
"                               Specific filetype
" ============================================================================ "

" Programming

" 在80列的地方加条竖线
autocmd FileType scheme,asm,c,python,cpp,java,ruby,scala setlocal colorcolumn=80
" Automatically removing all trailing whitespace
autocmd FileType scheme,asm,c,python,cpp,java,ruby,scala autocmd BufWritePre <buffer> :%s/\s\+$//e
" web programming
autocmd FileType html,css,javascript setlocal nowrap
" 超过 80 个字符，自动换行(相当于加个回车)
" autocmd FileType Markdown setlocal tw=80 fo+=Mm


" ============================================================================ "
"                               For Interface
" ============================================================================ "

" 设置启动界面大小
set lines=29 columns=98
" set language(en)
set langmenu=en_US
let $LANG='en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 关闭/开启 菜单栏
"set guioptions-=m       " remove menubar
set guioptions-=T       " remove toolbar
" set guioptions-=r     " 不显示右侧滚动条
set guioptions-=l

" Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Set Color Scheme
if has("gui_running")
    colorscheme ralor
endif


" ============================================================================ "
"                               hot_key(shortcut_key)
" ============================================================================ "

"" Programming
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
autocmd FileType python map <buffer> <F9> :!python %:p<CR>
autocmd FileType python map <buffer> <F5> :!python3 %:p<CR>

autocmd FileType c map <buffer> <F8> :!gcc -Wall %:p -o %<<CR>
autocmd FileType c map <buffer> <F9> :!./%<<CR>

autocmd FileType haskell map <buffer> <F9> :!ghci %:p<CR>
"" autocmd FileType scheme map <buffer> <F9> :!guile %:p<CR>

"" Plugin
" taglist
nnoremap <F3> :TlistToggle<CR>


" ============================================================================ "
"                                   plugin
" ============================================================================ "

"" Taglist
let Tlist_Use_Right_Window = 1


"" airline
let g:airline_theme='kolor'
set laststatus=2
let g:airline#extensions#tagbar#flags = 's'
let g:airline#extensions#tabline#enabled = 1        " emable smarter tab line
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'


"" indentLine
"let g:indentLine_color_gui = '#A4E57E'     " for gvim
let g:indentLine_char = '┆'     " indentLine char, '¦', '┆', '︙' or else.


" vim2hs
let g:haskell_conceal_wide = 1


" vim-auto-save
let g:auto_save = 1                 " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1   " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1        " do not display the auto-save notification


" python-syntax
let OPTION_NAME = 1
let python_highlight_all = 1
let b:python_version_2 = 1


" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/ycm_bin/conf/ycm_extra_conf.py'
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_complete_in_comments=1

"let g:ycm_confirm_extra_conf=0         " 不显示开启vim时检查ycm_extra_conf文件的信息
"let g:ycm_cache_omnifunc=0             " 每次重新生成匹配项，禁止缓存匹配项

"nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic

" Omni-Completion tip window close when movement in insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" Omni-Completion tip window when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}


