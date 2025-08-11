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

"Bridge beetwen vim-lsp and ALE
Plug 'rhysd/vim-lsp-ale'

"Semantic highlighting
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"Python support module
Plug 'python-mode/python-mode'

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
""Auto close braces
"Plugin 'vim-scripts/AutoClose'
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

let g:lsp_semantic_enabled=1

let g:NERDTreeWinPos='right'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Key mapping

map <F1> :ls<CR>:b<Space>
map <F3> <C-]><CR>
map <F4> :NERDTreeToggle<CR>
map <F7> <Esc>:bp<CR>
map <F8> <Esc>:bn<CR>
map <F9> <Esc>:e 

"map <A-CR> O<Esc>j
"map <CR> o<Esc>k

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

set tags=.tags,tags

"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

