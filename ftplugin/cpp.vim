" mark 120-th column
setlocal colorcolumn=120
highlight ColorColumn ctermbg=darkgray

"if executable('ccls')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'ccls',
"        \ 'cmd': {server_info->['ccls']},
"        \ 'allowlist': ['cpp'],
"        \ 'initialization_options': {
"        "\   'highlight': { 'lsRanges' : v:true },
"        \ }
"        \ })
"endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['cpp'],
        \ 'initialization_options': {
        \ }
        \ })
endif

let b:ale_lint_on_text_changed=1
let b:ale_lint_on_insert_leave=1

let b:ale_cpp_cc_options = '-std=c++20 -Wall Wextra'

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
let b:ale_linters = []
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
