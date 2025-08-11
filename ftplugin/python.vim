"Python-mode
let g:pymode_python = 'python3'
let g:pymode_folding=0
let g:pymode_trim_whitespaces=0
let g:pymode_options_max_line_length=79
let g:pymode_options_colorcolumn=1

let g:pymode_lint=1
let g:pymode_lint_checkers=['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_unmodified=1
let g:pymode_quickfix_minheight=1
let g:pymode_quickfix_maxheight=1
let g:pymode_lint_ignore='C901'

let g:pymode_rope_goto_definition_cmd='e'

let g:pymode_syntax_highlight_equal_operator=0
let g:pymode_syntax_highlight_self=0
