" redline.vim — colorscheme derived from the code-redline review tool
" Maintainer: kristinnsigurbergsson
" Background: dark

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "redline"

" Palette
" bg       #07090d
" bg2      #0c0f15
" panel    #0e1219
" bg3      #11151e
" fg       #c8d8e8
" cyan     #4de8c2
" cyan_dim #1a5c4e
" muted    #4a6070
" amber    #d4a040
" red      #e05050

" ── Core ─────────────────────────────────────────────────────────────────────
hi Normal          guifg=#c8d8e8  guibg=#07090d  gui=NONE
hi NormalNC        guifg=#c8d8e8  guibg=#07090d  gui=NONE

" ── Cursor / Line ─────────────────────────────────────────────────────────────
hi Cursor          guifg=#07090d  guibg=#4de8c2  gui=NONE
hi CursorLine      guifg=NONE     guibg=#0e1219  gui=NONE
hi CursorLineNr    guifg=#4de8c2  guibg=#0e1219  gui=NONE
hi LineNr          guifg=#4a6070  guibg=NONE     gui=NONE
hi ColorColumn     guifg=NONE     guibg=#0e1219  gui=NONE

" ── Selection / Search ────────────────────────────────────────────────────────
hi Visual          guifg=NONE     guibg=#1a5c4e  gui=NONE
hi Search          guifg=#07090d  guibg=#4de8c2  gui=NONE
hi IncSearch       guifg=#07090d  guibg=#d4a040  gui=NONE
hi MatchParen      guifg=#4de8c2  guibg=#1a5c4e  gui=bold

" ── Syntax ────────────────────────────────────────────────────────────────────
hi Comment         guifg=#4a6070  guibg=NONE     gui=NONE
hi Constant        guifg=#4de8c2  guibg=NONE     gui=NONE
hi String          guifg=#4de8c2  guibg=NONE     gui=NONE
hi Character       guifg=#4de8c2  guibg=NONE     gui=NONE
hi Number          guifg=#d4a040  guibg=NONE     gui=NONE
hi Float           guifg=#d4a040  guibg=NONE     gui=NONE
hi Boolean         guifg=#d4a040  guibg=NONE     gui=NONE

hi Identifier      guifg=#c8d8e8  guibg=NONE     gui=NONE
hi Function        guifg=#4de8c2  guibg=NONE     gui=NONE

hi Statement       guifg=#4de8c2  guibg=NONE     gui=NONE
hi Conditional     guifg=#4de8c2  guibg=NONE     gui=NONE
hi Repeat          guifg=#4de8c2  guibg=NONE     gui=NONE
hi Label           guifg=#4de8c2  guibg=NONE     gui=NONE
hi Operator        guifg=#c8d8e8  guibg=NONE     gui=NONE
hi Keyword         guifg=#4de8c2  guibg=NONE     gui=NONE
hi Exception       guifg=#e05050  guibg=NONE     gui=NONE

hi PreProc         guifg=#d4a040  guibg=NONE     gui=NONE
hi Include         guifg=#d4a040  guibg=NONE     gui=NONE
hi Define          guifg=#d4a040  guibg=NONE     gui=NONE
hi Macro           guifg=#d4a040  guibg=NONE     gui=NONE
hi PreCondit       guifg=#d4a040  guibg=NONE     gui=NONE

hi Type            guifg=#c8d8e8  guibg=NONE     gui=NONE
hi StorageClass    guifg=#4de8c2  guibg=NONE     gui=NONE
hi Structure       guifg=#4de8c2  guibg=NONE     gui=NONE
hi Typedef         guifg=#4de8c2  guibg=NONE     gui=NONE

hi Special         guifg=#d4a040  guibg=NONE     gui=NONE
hi SpecialChar     guifg=#d4a040  guibg=NONE     gui=NONE
hi Tag             guifg=#4de8c2  guibg=NONE     gui=NONE
hi Delimiter       guifg=#4a6070  guibg=NONE     gui=NONE
hi SpecialComment  guifg=#4a6070  guibg=NONE     gui=italic
hi Debug           guifg=#e05050  guibg=NONE     gui=NONE

hi Underlined      guifg=#4de8c2  guibg=NONE     gui=underline
hi Ignore          guifg=#4a6070  guibg=NONE     gui=NONE
hi Error           guifg=#e05050  guibg=#2a1010  gui=NONE
hi Todo            guifg=#d4a040  guibg=#0e1219  gui=bold

" ── UI Chrome ─────────────────────────────────────────────────────────────────
hi StatusLine      guifg=#c8d8e8  guibg=#0e1219  gui=NONE
hi StatusLineNC    guifg=#4a6070  guibg=#0e1219  gui=NONE
hi VertSplit       guifg=#4a6070  guibg=#07090d  gui=NONE
hi TabLine         guifg=#4a6070  guibg=#0e1219  gui=NONE
hi TabLineSel      guifg=#4de8c2  guibg=#07090d  gui=NONE
hi TabLineFill     guifg=NONE     guibg=#0e1219  gui=NONE
hi WildMenu        guifg=#07090d  guibg=#4de8c2  gui=NONE

hi Pmenu           guifg=#c8d8e8  guibg=#0e1219  gui=NONE
hi PmenuSel        guifg=#07090d  guibg=#4de8c2  gui=NONE
hi PmenuSbar       guifg=NONE     guibg=#0c0f15  gui=NONE
hi PmenuThumb      guifg=NONE     guibg=#4a6070  gui=NONE

hi FoldColumn      guifg=#4a6070  guibg=#07090d  gui=NONE
hi Folded          guifg=#4a6070  guibg=#0e1219  gui=NONE
hi SignColumn      guifg=#4a6070  guibg=#07090d  gui=NONE

hi NonText         guifg=#4a6070  guibg=NONE     gui=NONE
hi SpecialKey      guifg=#4a6070  guibg=NONE     gui=NONE
hi EndOfBuffer     guifg=#4a6070  guibg=NONE     gui=NONE

hi Title           guifg=#4de8c2  guibg=NONE     gui=NONE
hi Question        guifg=#4de8c2  guibg=NONE     gui=NONE
hi MoreMsg         guifg=#4de8c2  guibg=NONE     gui=NONE
hi ModeMsg         guifg=#c8d8e8  guibg=NONE     gui=NONE
hi WarningMsg      guifg=#d4a040  guibg=NONE     gui=NONE
hi ErrorMsg        guifg=#e05050  guibg=#2a1010  gui=NONE

hi Directory       guifg=#4de8c2  guibg=NONE     gui=NONE

" ── Diff ──────────────────────────────────────────────────────────────────────
" mirrors the review tool's own diff colours
hi DiffAdd         guifg=#4de8c2  guibg=#071a14  gui=NONE
hi DiffChange      guifg=#d4a040  guibg=#1a1400  gui=NONE
hi DiffDelete      guifg=#e05050  guibg=#1a0808  gui=NONE
hi DiffText        guifg=#d4a040  guibg=#2a2000  gui=bold

" ── Terminal colours (Vim 8 / Neovim) ────────────────────────────────────────
if has("termguicolors")
  " nothing extra needed — all highlights above use gui= attrs
endif

" 256-colour fallbacks (cterm) ─────────────────────────────────────────────────
hi Normal          ctermfg=253  ctermbg=232  cterm=NONE
hi Comment         ctermfg=60   ctermbg=NONE cterm=NONE
hi Constant        ctermfg=86   ctermbg=NONE cterm=NONE
hi String          ctermfg=86   ctermbg=NONE cterm=NONE
hi Number          ctermfg=178  ctermbg=NONE cterm=NONE
hi Statement       ctermfg=86   ctermbg=NONE cterm=NONE
hi Keyword         ctermfg=86   ctermbg=NONE cterm=NONE
hi Function        ctermfg=86   ctermbg=NONE cterm=NONE
hi Type            ctermfg=253  ctermbg=NONE cterm=NONE
hi PreProc         ctermfg=178  ctermbg=NONE cterm=NONE
hi Special         ctermfg=178  ctermbg=NONE cterm=NONE
hi Error           ctermfg=203  ctermbg=52   cterm=NONE
hi LineNr          ctermfg=60   ctermbg=NONE cterm=NONE
hi CursorLine      ctermfg=NONE ctermbg=233  cterm=NONE
hi Visual          ctermfg=NONE ctermbg=22   cterm=NONE
hi Search          ctermfg=232  ctermbg=86   cterm=NONE
hi StatusLine      ctermfg=253  ctermbg=233  cterm=NONE
hi StatusLineNC    ctermfg=60   ctermbg=233  cterm=NONE
hi VertSplit       ctermfg=60   ctermbg=232  cterm=NONE
hi Pmenu           ctermfg=253  ctermbg=233  cterm=NONE
hi PmenuSel        ctermfg=232  ctermbg=86   cterm=NONE
