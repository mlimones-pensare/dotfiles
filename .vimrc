set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" HERE COME THE PLUGGINS
" cool status line
Plugin 'bling/vim-airline'
" Airline themes
Plugin 'vim-airline/vim-airline-themes'
" Fuzzy serch pluggin
Plugin 'wincent/command-t'
" Vim Colorschemes"
Plugin 'wellsjo/wellsokai.vim'
" Ultisnips
Plugin 'SirVer/ultisnips'
" Surround plugin
Plugin 'tpope/vim-surround'
" Vim syntax support for all languages
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set cindent
" use indentation of previous line
set autoindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" show at least 80 chars in a split
set winwidth=80
" turn syntax highlighting on
syntax enable
" set 256 terminal
set t_Co=256
"set background=dark
color wellsokai
" turn line numbers on
set number
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Manuel Limones <limonesu.me@gmail.com>"

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" create doxygen comment
map <F6> :Dox<CR>
" goto definition with F12
map <F12> <C-]>
"vim-airline configuration
"set fonts
set guifont=Ubuntu\ Mono\ derivative\ Powerline
"Enable powerline symbols
let g:airline_powerline_fonts = 1
"set airline theme
let g:airline_theme='badwolf'
"always show status bar
set laststatus=2


"Custom maps
"Force quit
cmap qq q!<cr>
"Force edit
cmap ee e!
"Map leader key
let mapleader=","
"Switch files
map <Leader><Leader> <C-^>
"Run make based project
map <Leader>r :w\|:make run <cr>
"Test make based project
map <Leader>d :w\|:!make test <cr>
"Save all files
map <Leader>s :wa<cr>
"Quit file
map <Leader>q :q!<cr>
"Run current python script
map <Leader>ps :w\|:!python -c "execfile('%')"<cr>
"Run current python script
map <Leader>w :w<cr>
"Navigate splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Flush Command-t buffer and start search
map <Leader>f :CommandTFlush<cr><Leader>t

cnoremap <expr> %% expand('%:h').'/'
cnoremap <expr> %, expand('%')

"Search configuration
"Search as characters are entered
set incsearch
"Highlight matches
set hlsearch
"Turn off serach highlight
nnoremap <leader><space> :nohlsearch<cr>
"Ignore .pyc files in CommandT searches
let g:CommandTWildIgnore=&wildignore . ",*.pyc,*__init__.py,node_modules,dist"
"Insert header guard
nmap <Leader>h iinclude_guard<tab><esc>
"Omnicomplete configuration
filetype plugin on
set omnifunc=syntaxcomplete#Complete
:let g:load_doxygen_syntax=1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/mysnippets"
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]
let g:UltiSnipsEnableSnipMate="0"

let g:jsx_ext_required = 1
