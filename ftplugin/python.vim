"Python-mode
let g:pymode_python = 'python3'
let g:pymode_folding=0
let g:pymode_trim_whitespaces=0
let g:pymode_options_max_line_length=0
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

if executable('pylsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(
        \   lsp#utils#get_buffer_path(), ['pyproject.toml','setup.py']))},
        \ 'allowlist': ['python'],
        \ 'initialization_options': {
        \ }
        \ })
endif

let b:ale_lint_on_text_changed=1
let b:ale_lint_on_insert_leave=1

let b:lsp_diagnostics_virtual_text_enabled=0
let b:ale_virtualtext_cursor=0

"Available Linters: ['cc', 'ccls', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'cspell', 'flawfinder']
"cc does not work,
"ccls ignored by ALE
"clang-check seems overruled by clang-tidy,
"clangd & clang-tidy provided by vim-lsp,
"clazy only v14,
"cppcheck is outdated,
"cpplint checks style,
"cquery & cspell are not available,
"flawfinder is outdated
"let b:ale_linters = []
let b:ale_linters_ignore = []

highlight LspSemanticNamespace cterm=bold ctermfg=Grey
highlight LspSemanticClass cterm=bold ctermfg=LightGrey
highlight link LspSemanticConcept LspSemanticClass
highlight link LspSemanticType LspSemanticClass
highlight link LspSemanticTypeParameter LspSemanticClass
highlight link LspSemanticEnum LspSemanticClass
highlight LspSemanticMethod cterm=none ctermfg=247
"highlight link LspSemanticOperator LspSemanticMethod
highlight LspSemanticProperty cterm=none ctermfg=230
highlight LspSemanticFunction cterm=none ctermfg=247
highlight LspSemanticVariable cterm=none ctermfg=195
highlight LspSemanticParameter cterm=none ctermfg=195
highlight lspReference cterm=underline
