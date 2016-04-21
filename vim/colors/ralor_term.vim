" Vim color file
" 
" Based on: https://github.com/zeis/vim-kolor
"
" Version: 1.0
" Vim(Gvim) version: 7.4


highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif


highlight Normal          ctermfg=254     ctermbg=235     cterm=none
highlight SpecialKey      ctermfg=111     ctermbg=none    cterm=none
highlight NonText         ctermfg=111     ctermbg=235     cterm=none
highlight Directory       ctermfg=180     ctermbg=none    cterm=none
highlight IncSearch       ctermfg=0       ctermbg=206     cterm=none
highlight LineNr          ctermfg=244     ctermbg=234     cterm=none
highlight StatusLine      ctermfg=0       ctermbg=247     cterm=none
highlight StatusLineNC    ctermfg=247     ctermbg=238     cterm=none
highlight VertSplit       ctermfg=238     ctermbg=238     cterm=none
highlight Visual          ctermfg=254     ctermbg=240     cterm=none
highlight VisualNOS       ctermfg=254     ctermbg=none    cterm=underline
highlight WildMenu        ctermfg=0       ctermbg=80      cterm=none
highlight Folded          ctermfg=103     ctermbg=234     cterm=none
highlight FoldColumn      ctermfg=103     ctermbg=234     cterm=none
highlight DiffAdd         ctermfg=none    ctermbg=23      cterm=none
highlight DiffChange      ctermfg=none    ctermbg=56      cterm=none
highlight DiffDelete      ctermfg=168     ctermbg=96      cterm=none
highlight DiffText        ctermfg=0       ctermbg=80      cterm=none
highlight SignColumn      ctermfg=244     ctermbg=235     cterm=none
highlight Conceal         ctermfg=251     ctermbg=none    cterm=none
highlight SpellBad        ctermfg=168     ctermbg=none    cterm=underline
highlight SpellCap        ctermfg=80      ctermbg=none    cterm=underline
highlight SpellRare       ctermfg=121     ctermbg=none    cterm=underline
highlight SpellLocal      ctermfg=186     ctermbg=none    cterm=underline
highlight Pmenu           ctermfg=251     ctermbg=234     cterm=none
highlight PmenuSel        ctermfg=0       ctermbg=111     cterm=none
highlight PmenuSbar       ctermfg=206     ctermbg=235     cterm=none
highlight PmenuThumb      ctermfg=235     ctermbg=206     cterm=none
highlight TabLine         ctermfg=244     ctermbg=234     cterm=none
highlight TablineSel      ctermfg=0       ctermbg=247     cterm=none
highlight TablineFill     ctermfg=244     ctermbg=234     cterm=none
highlight CursorColumn    ctermfg=none    ctermbg=236     cterm=none
highlight CursorLine      ctermfg=none    ctermbg=236     cterm=none
highlight ColorColumn     ctermfg=none    ctermbg=236     cterm=none
highlight Cursor          ctermfg=0       ctermbg=254     cterm=none
highlight Comment         ctermfg=244     ctermbg=none    cterm=none
highlight Constant        ctermfg=180     ctermbg=none    cterm=none
highlight Special         ctermfg=176     ctermbg=none    cterm=none
highlight Identifier      ctermfg=80      ctermbg=none    cterm=none
highlight PreProc         ctermfg=186     ctermbg=none    cterm=none
highlight String          ctermfg=138     ctermbg=none    cterm=none
highlight Number          ctermfg=186     ctermbg=none    cterm=none
highlight Function        ctermfg=114     ctermbg=none    cterm=none
highlight htmlEndTag      ctermfg=114     ctermbg=none    cterm=none
highlight xmlEndTag       ctermfg=114     ctermbg=none    cterm=none

highlight ErrorMsg        ctermfg=168     ctermbg=none    cterm=bold
highlight Search          ctermfg=208     ctermbg=none    cterm=bold
highlight MoreMsg         ctermfg=121     ctermbg=none    cterm=bold
highlight ModeMsg         ctermfg=254     ctermbg=none    cterm=bold
highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
highlight Question        ctermfg=80      ctermbg=none    cterm=bold
highlight WarningMsg      ctermfg=206     ctermbg=none    cterm=bold
highlight Statement       ctermfg=168     ctermbg=none    cterm=bold
highlight Type            ctermfg=141     ctermbg=none    cterm=bold
highlight Error           ctermfg=168     ctermbg=none    cterm=bold
highlight Todo            ctermfg=80      ctermbg=none    cterm=bold
highlight Keyword         ctermfg=168     ctermbg=none    cterm=bold
highlight Title           ctermfg=141     ctermbg=none    cterm=bold

highlight MatchParen      ctermfg=235     ctermbg=206     cterm=bold

highlight Underlined      ctermfg=111     ctermbg=none    cterm=none
