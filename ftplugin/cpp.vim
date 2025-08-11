"if executable('ccls')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'ccls',
"        \ 'cmd': {server_info->['ssh', 'ubuntu@lxc-ubuntu-24-04-qrator', 'ccls']},
"        \ 'allowlist': ['cpp'],
"        \ 'initialization_options': {
"        "\   'highlight': { 'lsRanges' : v:true },
"        \ }
"        \ })
"endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['ssh', 'ubuntu@lxc-ubuntu-24-04-qrator', 'clangd']},
        \ 'allowlist': ['cpp'],
        \ 'initialization_options': {
        "\   'clangd.semanticHighlighting': true
        \ }
        \ })
endif

let g:ale_cpp_cc_options = '-std=c++20 -Wall Wextra'
let b:ale_linters = []  "used vim-lsp
