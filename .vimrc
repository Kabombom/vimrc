"Vundle Stuff
set nocompatible
filetype indent plugin on
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Linter
Plugin 'scrooloose/syntastic'

"Airline
Plugin 'bling/vim-airline'

"Polyglot
Plugin 'sheerun/vim-polyglot'

"Expand
Plugin 'terryma/vim-expand-region'

"UltiSnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"EndComplete
Plugin 'tpope/vim-endwise'

"IndentLines
Plugin 'Yggdroot/indentLine'

"Nerd Tree
Plugin 'scrooloose/nerdtree'

"Commenter
Plugin 'scrooloose/nerdcommenter'

"Themes
Plugin 'chriskempson/tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'

"ImprovedCPP
Plugin 'octol/vim-cpp-enhanced-highlight'

"Fugitive
Plugin 'tpope/vim-fugitive'

"Tabularize
Plugin 'godlygeek/tabular'

"Super-Tab
Plugin 'ervandew/supertab'

"CtrlP
Plugin 'kien/ctrlp.vim'

"Surround.vim
Plugin 'tpope/vim-surround'

"Auto-Pair
Plugin 'jiangmiao/auto-pairs'

"Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

"Emmet
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
"=End of Vundle

"Mapping for vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"ctrlp
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif

"General
set autoread
set autoindent
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=4
set expandtab
set ignorecase     "Search is not case sensitive
set scrolloff=20   "Always keep a space of 20 lines from bottom
set wildmenu       "Wildmenu on
set wildmode=longest,full
set backspace=eol,start,indent 
let mapleader = ","
let g:mapleader = ","
let python_highlight_all = 1

if exists("&wildignorecase")
  set wildignorecase
endif

"Cosmetic
syntax enable
colorscheme Tomorrow-Night-Bright
set guifont=Inconsolata:h17
set number         "Line Numbers
set ts=4           "Smaller tab size
set tabstop=4
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets
set term=screen-256color
set t_Co=256

"Change cursor shape in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"For UltiSnips
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

"Line Identation
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

"Airline
set laststatus=2
set linespace=0
let g:airline_theme="tomorrow"
let g:airline_detect_modified = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
set encoding=utf-8
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

"poweerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"syntastic
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 0

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
