syntax on

"Turn on identation.
filetype indent on

"Turn on plugin loading.
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Less compartible with vi
set nocompatible

"Change cwd with newly open file
set autochdir

"Hide buffers when abandon, rather then delete it
set hidden

"Ignore case in pattern
set ignorecase

"Tabs to whitespaces.
set expandtab
set tabstop=4
set shiftwidth=0  "use tabstop value for >>, <<, cindent
set cindent

"Persistent undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=100000

"Show line numbers
set number
"No wrap long string
set nowrap
"Highlight cursorline
set cursorline
"Always show statusline
set laststatus=2
"Status line
set statusline=%<%F\ %h%w%m%r%=%-14.(%n,%l/%L,%c%)\ %P

"Increase help buffer height
set helpheight=80

"Completition mode.
set wildmode=longest:list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Plugin manager

"vim-plug section begin
call plug#begin()

"Plugin to mass comment.
Plug 'scrooloose/nerdcommenter'

"Nerd directory tree navigation
Plug 'scrooloose/nerdtree'

"Linting and LSP over vim-lsp
Plug 'dense-analysis/ale'

"LSP client
Plug 'prabirshrestha/vim-lsp'

"Asynccomplete for LSP
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

"Bridge beetwen vim-lsp and ALE
Plug 'rhysd/vim-lsp-ale'

"Semantic highlighting
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"Python support module
Plug 'python-mode/python-mode'

"Autoclose brakets
Plug 'Raimondi/delimitMate'

"git integration
Plug 'tpope/vim-fugitive'

"Verical bars at indentation
Plug 'Yggdroot/indentLine'

"Parentheses and identation for lisp
"Quite broken
"Plug 'eraserhd/parinfer-rust'

call plug#end()
"vim-plug section end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vundle section start.
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"Plugin 'gmarik/Vundle.vim'
"
""Git plugin + tags
"Plugin 'tpope/vim-fugitive'
"
""Rerun ctags when files changed
"Plugin 'vim-scripts/AutoTag'
"
""Old but valid erlang support files
"Plugin 'Vimerl'
"
"call vundle#end()
"Vundle section stop.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Colorscheme

function UpdateColorScheme()
    if g:colors_name == "koehler"
        highlight StatusLine ctermbg=4
        highlight StatusLineNC ctermbg=8
        highlight Visual cterm=bold
        highlight WarningMsg term=standout  cterm=bold  ctermfg=grey guifg=Red
        highlight Error	term=reverse ctermfg=darkcyan ctermbg=red guifg=Red guibg=Black
        highlight Search cterm=bold ctermfg=darkcyan
        highlight pythonBuiltinType cterm=bold ctermfg=brown
        highlight pythonClass cterm=bold ctermfg=brown
        highlight DiffAdd term=bold ctermbg=17 guibg=#2a0d6a
        highlight DiffDelete term=bold ctermfg=234 ctermbg=60 guifg=#242424 guibg=#3e3969
        highlight DiffText term=reverse ctermbg=53 guibg=#73186e
        highlight DiffChange term=bold ctermbg=237 guibg=#382a37
    elseif g:colors_name == "blue"
        highlight Folded ctermbg=4
    endif
endfunction

autocmd ColorScheme * call UpdateColorScheme()
colorscheme koehler
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Highlight long lines.
"highlight OverLength ctermfg=111
"autocmd ColorScheme * highlight OverLength ctermfg=111
"match OverLength /\%80v.\+/

"Highlight trailing whitespaces.
highlight ExtraWhiteSpace ctermbg=red
autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red
match ExtraWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Plugin settings

let g:ale_completion_enabled = 1
let g:ale_hover_cursor=1
let g:ale_hover_to_preview=0
let g:ale_set_balloons=1
let g:ale_virtualtext_cursor=0

noremap  <F6> :ALENextWrap<CR>
noremap! <F6> <Esc>:ALENextWrap<CR>
noremap  <F7> :ALEPreviousWrap <CR>
noremap! <F7> <Esc>:ALEPreviousWrap <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:lsp_log_verbose = 0
"let g:lsp_log_file = expand('~/vim-lsp.log')

let g:lsp_completion_documentation_enabled=0
let g:lsp_diagnostics_enabled=1
let g:lsp_semantic_enabled=1
let g:lsp_use_lua=1  "for performance
let g:lsp_auto_enable = 1
let g:lsp_ale_diagnostics_severity='hint'

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    nmap <buffer> <C-]> <plug>(lsp-definition)
    noremap  <F4> :LspHover<CR>
    noremap! <F4> <Esc>:LspHover<CR>
    noremap  <F5> :LspCodeAction<CR>
    noremap! <F5> <Esc>:LspCodeAction<CR>
    nmap <buffer> <F8> <plug>(lsp-rename)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:asyncomplete_auto_popup=0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDTreeWinPos='right'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_char = '┊'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Code

"Jump to the latest cursor place
autocmd BufReadPost * silent! normal! g`"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Key mapping

noremap  <F1> :ls<CR>:b<Space>
noremap! <F1> <Esc>:ls<CR>:b<Space>
noremap  <F9> :NERDTreeToggle<CR>

noremap  no    A<CR><Esc>
noremap  nO    0i<CR><Esc>k

map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <Esc>Ol +

"set tags=.tags,tags

"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
