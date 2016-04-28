hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "erlang"
hi Normal		ctermfg=252 cterm=bold ctermbg=17
hi String               ctermfg=34
hi comment		ctermfg=166
hi Include              ctermfg=250
hi identifier           ctermfg=255 cterm=bold
hi Conditional          ctermfg=255 cterm=bold
hi CursorLine           ctermbg=18
hi Keyword              ctermfg=226 cterm=bold
hi Type                 ctermfg=226
hi Macro                ctermfg=160
hi ExtraWhiteSpace      ctermbg=red
hi operator		ctermfg=25 cterm=bold
hi delimiter            ctermfg=25 cterm=bold
hi number               ctermfg=124 cterm=bold
hi special		ctermfg=130
"hi boolean              ctermfg=247
hi LineNr		ctermfg=244
hi MatchParen           ctermbg=94
hi NonText		guifg=magenta	ctermfg=lightMagenta
hi constant		guifg=cyan		ctermfg=cyan
hi statement	guifg=white		ctermfg=white	ctermbg=darkBlue	gui=none
hi preproc		guifg=green		ctermfg=green
hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
hi label		guifg=yellow	ctermfg=yellow

hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red

hi Todo			guifg=black		guibg=orange	ctermfg=black	ctermbg=darkYellow
hi Search		guifg=black		guibg=orange	ctermfg=black	ctermbg=darkYellow
hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi title		guifg=white	gui=bold	cterm=bold

hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=black  ctermbg=blue
hi StatusLine	gui=bold	guifg=cyan	guibg=blue	ctermfg=cyan   ctermbg=blue
hi VertSplit	gui=none	guifg=blue	guibg=blue	ctermfg=blue	ctermbg=blue

hi Visual		term=reverse		ctermfg=black	ctermbg=darkCyan	guifg=black		guibg=darkCyan

hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral			guifg=black	ctermbg=cyan		ctermfg=black

hi Folded		guibg=orange		guifg=black		ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30		guifg=black	ctermbg=gray		ctermfg=black
hi cIf0			guifg=gray			ctermfg=gray

