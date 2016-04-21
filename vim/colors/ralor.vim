" Vim(gui) colorscheme
" 
" Base on: https://github.com/zeis/vim-kolor
"
" Version: 1.0
" Vim(Gvim) version: 7.4


highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif

" Normal setting
highlight Normal          guifg=#c6c6c6    guibg=#191719    gui=none
highlight NonText         guifg=#7eaefd    guibg=#191719    gui=none
highlight SpecialKey      guifg=#7eaefd    guibg=NONE       gui=none
highlight Directory       guifg=#e6987a    guibg=NONE       gui=none
highlight IncSearch       guifg=#000000    guibg=#ff5fd7    gui=none
highlight LineNr          guifg=#808080    guibg=#242322    gui=none
highlight StatusLine      guifg=#000000    guibg=#9e9e9e    gui=none
highlight StatusLineNC    guifg=#b2b2b2    guibg=#4a4a4a    gui=none
highlight VertSplit       guifg=#4a4a4a    guibg=#4a4a4a    gui=none
highlight Visual          guifg=#e2e2e2    guibg=#5c5c5c    gui=none
highlight VisualNOS       guifg=#e2e2e2    guibg=NONE       gui=underline
highlight WildMenu        guifg=#000000    guibg=#75d7d8    gui=none
highlight Folded          guifg=#8787af    guibg=#242322    gui=none
highlight FoldColumn      guifg=#8787af    guibg=#242322    gui=none
highlight DiffAdd         guifg=NONE       guibg=#005154    gui=none
highlight DiffChange      guifg=NONE       guibg=#4f3598    gui=none
highlight DiffDelete      guifg=#d96e8a    guibg=#72323f    gui=none
highlight DiffText        guifg=#000000    guibg=#75d7d8    gui=none
highlight SignColumn      guifg=#808080    guibg=#2e2d2b    gui=none
highlight Conceal         guifg=#c6c6c6    guibg=NONE       gui=none
highlight SpellBad        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#d96e8a
highlight SpellCap        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#75d7d8
highlight SpellRare       guifg=NONE       guibg=NONE       gui=undercurl    guisp=#8cd991
highlight SpellLocal      guifg=NONE       guibg=NONE       gui=undercurl    guisp=#dbc570
highlight Pmenu           guifg=#c6c6c6    guibg=#242322    gui=none
highlight PmenuSel        guifg=#000000    guibg=#7eaefd    gui=none
highlight PmenuSbar       guifg=#ff5fd7    guibg=#262626    gui=none
highlight PmenuSbar       guifg=#ff5fd7    guibg=#2e2d2b    gui=none
highlight PmenuThumb      guifg=#2e2d2b    guibg=#ff5fd7    gui=none
highlight TabLine         guifg=#808080    guibg=#242322    gui=none
highlight TablineSel      guifg=#000000    guibg=#9e9e9e    gui=none
highlight TablineFill     guifg=#808080    guibg=#242322    gui=none
highlight ColorColumn     guifg=NONE       guibg=#383734    gui=none
highlight CursorColumn    guifg=NONE       guibg=#383734    gui=none
highlight CursorLine      guifg=NONE       guibg=#000000    gui=none
highlight Cursor          guifg=#000000    guibg=#ffff00    gui=none
highlight lCursor         guifg=#000000    guibg=#ffff00    gui=none
highlight Special         guifg=#ce6bd0    guibg=NONE       gui=none
highlight Todo            guifg=#75d7d8    guibg=NONE       gui=bold
highlight Title           guifg=#a080ea    guibg=NONE       gui=bold
highlight ErrorMsg        guifg=#d96e8a    guibg=NONE       gui=bold
highlight Search          guifg=#ff8901    guibg=NONE       gui=bold
highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
highlight CursorLineNr    guifg=#e2e2e2    guibg=#383734    gui=bold
highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
highlight Underlined      guifg=#7eaefd    guibg=NONE       gui=none

" Other
highlight htmlEndTag      guifg=#88da77    guibg=NONE       gui=none
highlight xmlEndTag       guifg=#88da77    guibg=NONE       gui=none
highlight MatchParen      guifg=#2e2c29    guibg=#ff5fd7    gui=bold


" Programming
highlight Statement       guifg=#cc2f59    guibg=NONE      gui=bold
highlight String          guifg=#a5c261    guibg=NONE      gui=italic
" highlight UnicodeString
highlight Number          guifg=#4a64e5    guibg=NONE      gui=none


highlight Class           guifg=#008080    guibg=NONE      gui=bold
"highlight Structure      guifg=#008080    guibg=NONE      gui=bold

highlight Keyword         guifg=#cc2f59    guibg=NONE      gui=bold


highlight Function        guifg=#f7fbfc    guibg=NONE      gui=bold
highlight BuiltinFunc     guifg=#7B48C6    guibg=NONE      gui=bold

highlight Boolean         guifg=#e6987a    guibg=NONE       gui=none 
highlight Comment         guifg=#808080    guibg=NONE       gui=italic
highlight Constant        guifg=#e6987a    guibg=NONE       gui=italic
highlight Type            guifg=#a080ea    guibg=NONE       gui=bold
highlight Identifier      guifg=#75d7d8    guibg=NONE       gui=none
highlight PreProc         guifg=#dbc570    guibg=NONE       gui=none

" highlight Include
" highlight BuiltinObj

highlight pythonSelfPara  guifg=#783E54    guibg=NONE       gui=none
