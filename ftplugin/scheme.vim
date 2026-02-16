"if executable('/home/dafgar/.emacs.d/swish-lint/swish-lint')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'scheme-lsp-server',
"        \ 'cmd': {server_info->['/home/dafgar/.emacs.d/swish-lint/swish-lint','--lsp', '--user-config']},
"        \ 'allowlist': ['scheme'],
"        \ 'initialization_options': {
"        \ }
"        \ })
"endif

if executable('/home/dafgar/.local/opt/guile/bin/guile-lsp-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'scheme-lsp-server',
        \ 'cmd': {server_info->['/home/dafgar/.local/opt/guile/bin/guile-lsp-server']},
        \ 'allowlist': ['scheme'],
        \ 'initialization_options': {
        \ }
        \ })
endif

"if executable('/home/dafgar/.local/bin/scheme-langserver')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'scheme-lsp-server',
"        \ 'cmd': {server_info->['/home/dafgar/.local/bin/scheme-langserver','-e', 'r6rs', '-t','enable','-m','enable']},
"        \ 'allowlist': ['scheme'],
"        \ 'initialization_options': {
"        \ }
"        \ })
"endif

let b:ale_lint_on_text_changed=1
let b:ale_lint_on_insert_leave=1

let b:lsp_diagnostics_virtual_text_enabled=0
let b:ale_virtualtext_cursor=0

let b:ale_linters = []
let b:ale_linters_ignore = []
let b:ale_scheme_guild_options = '-W3'

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
