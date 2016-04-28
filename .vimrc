set number

"Vundle required.
set nocompatible

"Vundle section start.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Plugin to mass comment.
Plugin 'scrooloose/nerdcommenter'

"Nerd directory tree navigation
Plugin 'scrooloose/nerdtree'

"Git plugin + tags
Plugin 'tpope/vim-fugitive'

"Auto close braces
Plugin 'vim-scripts/AutoClose'

"Rerun ctags when files changed
Plugin 'vim-scripts/AutoTag'

call vundle#end()
"Vundle section stop.

"Turn on identation.
filetype indent on

"Turn on plugin loading.
filetype plugin on

"Tabs to whitespaces.
set expandtab
set tabstop=4
set shiftwidth=4
"set smartindent

"Highlight long lines.
"highlight OverLength ctermfg=111
"autocmd ColorScheme * highlight OverLength ctermfg=111
"match OverLength /\%80v.\+/

"Highlight trailing whitespaces.
highlight ExtraWhiteSpace ctermbg=red
autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red
match ExtraWhitespace /\s\+$/

function UpdateColorScheme()
    if g:colors_name == "koehler"
        highlight StatusLine ctermbg=4
        highlight StatusLineNC ctermbg=8
        highlight Visual cterm=bold
        highlight WarningMsg term=standout  cterm=bold  ctermfg=grey guifg=Red
        highlight Error	term=reverse ctermfg=darkcyan ctermbg=red guifg=Red guibg=Black
        highlight Search cterm=bold ctermfg=darkcyan
    elseif g:colors_name == "blue"
        highlight Folded ctermbg=4
    endif
endfunction

autocmd ColorScheme * call UpdateColorScheme()
colorscheme koehler
set t_Co=256

set cursorline

set ignorecase

set nowrap

" Persistent undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=100000

"Always show statusline
set laststatus=2

"Increase help buffer height
set helpheight=80

"Hide buffers when abandon, rather then delete it
set hidden

"Completition mode.
set wildmode=longest,list

set autochdir

let g:erlangHighlightBif=1
let g:erlangFold=0

let g:NERDTreeWinPos = 'right'

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

