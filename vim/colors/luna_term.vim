" Vim(terminal) colorscheme

" Based on:
" URL: http://github.com/Pychimp/vim-luna
" (see this url for latest release & screenshots)
" License: MIT (see LICENSE.rst in the root of project)



" TODO: {{{
" ---------------------------------------------------------------------
" -- Clean up !
" -- create a terminal version
" -- add more lang specifics
" -- (Will think of some more sutff !)
" }}}
"
"
" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
" }}}
"
" Console vim Highlighting:"{{{
" ---------------------------------------------------------------------
" First, the Normal
hi Normal        ctermfg=254 ctermbg=234 cterm=NONE
" ---------------------------------------------------------------------
" The Languages stuff
hi Title         ctermfg=195 ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Comment       ctermfg=240  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Constant      ctermfg=227  ctermbg=NONE cterm=NONE
hi String        ctermfg=74   ctermbg=NONE cterm=NONE
hi Character     ctermfg=211  ctermbg=NONE cterm=NONE
hi Number        ctermfg=227  ctermbg=NONE cterm=NONE
hi Boolean       ctermfg=227  ctermbg=NONE cterm=NONE
hi Float         ctermfg=227  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Identifier    ctermfg=37   ctermbg=NONE cterm=NONE
hi Function      ctermfg=37   ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Statement     ctermfg=197  ctermbg=NONE cterm=NONE
hi Conditional   ctermfg=184  ctermbg=NONE cterm=NONE
hi Operator      ctermfg=202  ctermbg=NONE cterm=NONE
hi Exception     ctermfg=184  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi PreProc       ctermfg=149  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Type          ctermfg=203  ctermbg=NONE cterm=NONE
hi StorageClass  ctermfg=173  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Special       ctermfg=211  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Underlined    ctermfg=111  ctermbg=NONE cterm=NONE
" ---------------------------------------------------------------------
hi Error         ctermfg=88   ctermbg=214 cterm=NONE
" ---------------------------------------------------------------------
hi TODO          ctermfg=198  ctermbg=228 cterm=NONE

" ---------------------------------------------------------------------
" Extended Highlighting

hi NonText      ctermfg=244  ctermbg=NONE cterm=NONE
hi Visual       ctermfg=235  ctermbg=227  cterm=NONE
hi ErrorMsg     ctermfg=88   ctermbg=214  cterm=NONE
hi IncSearch    ctermfg=235  ctermbg=208  cterm=NONE
hi Search       ctermfg=235  ctermbg=208  cterm=NONE
hi MoreMsg      ctermfg=241  ctermbg=NONE cterm=NONE
hi ModeMsg      ctermfg=241  ctermbg=NONE cterm=NONE
hi LineNr       ctermfg=244  ctermbg=NONE cterm=NONE
hi VertSplit    ctermfg=0    ctermbg=238  cterm=NONE
hi VisualNOS    ctermfg=235  ctermbg=227  cterm=NONE
hi Folded       ctermfg=23   ctermbg=235  cterm=NONE
hi DiffAdd      ctermfg=231  ctermbg=22   cterm=NONE
hi DiffChange   ctermfg=231  ctermbg=30   cterm=NONE
hi DiffDelete   ctermfg=196  ctermbg=88   cterm=NONE
hi DiffText     ctermfg=000  ctermbg=214  cterm=NONE
hi SpellBad     ctermfg=160  ctermbg=228  cterm=NONE
hi SpellCap     ctermfg=130  ctermbg=228  cterm=NONE
hi SpellRare    ctermfg=196  ctermbg=228  cterm=NONE
hi SpellLocal   ctermfg=28   ctermbg=228  cterm=NONE
hi StatusLine   ctermfg=231  ctermbg=23   cterm=NONE
hi StatusLineNC ctermfg=231  ctermbg=238  cterm=NONE
hi Pmenu        ctermfg=14   ctermbg=23   cterm=NONE
hi PmenuSel     ctermfg=23   ctermbg=15   cterm=NONE
hi PmenuSbar    ctermfg=235  ctermbg=235  cterm=NONE
hi PmenuThumb   ctermfg=235  ctermbg=235  cterm=NONE
hi MatchParen   ctermfg=16   ctermbg=203  cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=236  cterm=NONE
hi CursorLineNr ctermfg=117  ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=236  cterm=NONE
hi ColorColumn  ctermfg=NONE ctermbg=237  cterm=NONE
hi WildMenu     ctermfg=23   ctermbg=231  cterm=NONE
hi SignColumn   ctermfg=NONE ctermbg=234  cterm=NONE
"
" }}}
"
" Language Specifics: {{{
"
" ---------------------------------------------------------------------
" These are language specifics. These are set explicitly to override the group
" highlighting provided by vim (Simply to make the language that you're working
" on more awesome, and fun to work with !)
" ---------------------------------------------------------------------
" Python Specifics
hi pythonDot                ctermfg=011 ctermbg=NONE cterm=NONE
hi pythonParameters         ctermfg=149 ctermbg=NONE cterm=NONE
hi pythonClassParameters    ctermfg=149 ctermbg=NONE cterm=NONE
hi pythonClass              ctermfg=035 ctermbg=NONE cterm=NONE
hi pythonBuiltinFunc        ctermfg=135 ctermbg=NONE cterm=NONE
hi pythonSelfPara           ctermfg=169 ctermbg=NONE cterm=NONE
hi pythonBuiltinObj         ctermfg=169 ctermbg=NONE cterm=NONE
"
" ---------------------------------------------------------------------
"  Ruby Specifics
hi rubyInterpolation      ctermfg=203 ctermbg=NONE cterm=NONE
hi rubyMethodBlock        ctermfg=216 ctermbg=NONE cterm=NONE
hi rubyCurlyBlock         ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyDoBlock            ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyBlockExpression    ctermfg=204 ctermbg=NONE cterm=NONE
hi rubyArrayDelimiter     ctermfg=37  ctermbg=NONE cterm=NONE
"
" ---------------------------------------------------------------------
"
" }}}

" Extras: {{{
" ---------------------------------------------------------------------
" These are extra parts for highlighting certain external plugins
" ---------------------------------------------------------------------
"
" Startify (https://github.com/mhinz/vim-startify)
"
hi StartifyBracket  ctermfg=98  guibg=NONE gui=NONE
hi StartifyNumber   ctermfg=179 guibg=NONE gui=NONE
hi StartifySpecial  ctermfg=23  guibg=NONE gui=NONE
hi StartifyPath     ctermfg=239 guibg=NONE gui=NONE
hi StartifySlash    ctermfg=238 guibg=NONE gui=NONE
hi StartifyFile     ctermfg=204 guibg=NONE gui=NONE
hi StartifyHeader   ctermfg=216 guibg=NONE gui=NONE
hi StartifyFooter   ctermfg=167 guibg=NONE gui=NONE
"
" ---------------------------------------------------------------------
"
" Signify (https://github.com/mhinz/vim-signify)
"
hi SignifySignAdd    ctermfg=40  ctermbg=234 cterm=NONE
hi SignifySignChange ctermfg=214 ctermbg=234 cterm=NONE
hi SignifySignDelete ctermfg=196 ctermbg=234 cterm=NONE
"
" ---------------------------------------------------------------------
" }}}
"
