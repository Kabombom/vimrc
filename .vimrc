set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8

"Vundle Stuff {{
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'terryma/vim-expand-region'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'isRuslan/vim-es6'
  Plugin 'tpope/vim-endwise'
  Plugin 'Yggdroot/indentLine'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'chriskempson/tomorrow-theme'
  Plugin 'w0ng/vim-hybrid'
  Plugin 'whatyouhide/vim-gotham'
  Plugin 'jpo/vim-railscasts-theme'
  Plugin 'octol/vim-cpp-enhanced-highlight'
  Plugin 'godlygeek/tabular'
  Plugin 'ervandew/supertab'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'tpope/vim-surround'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'mattn/webapi-vim'
  Plugin 'mattn/gist-vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'mattn/emmet-vim'
  Plugin 'xolox/vim-misc'
call vundle#end()

filetype plugin indent on
"}}

"Leader key related mappings {{
let mapleader="\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
imap jj <Esc>
"}}

"Shaking the noob out{{
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"}}

"Split bellow or right {{
set splitbelow
set splitright
"}}
"Split navigation {{ 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"}}


"Mapping for vim-expand-region {{
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"}}

"ctrlp {{
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
"}}

"General {{
set autoread
set autoindent
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=2
set softtabstop=2 
set expandtab
set ignorecase     "Search is not case sensitive
set scrolloff=20   "Always keep a space of 20 lines from bottom
set wildmenu       "Wildmenu on
set wildmode=longest,full
set backspace=eol,start,indent 
set relativenumber

if exists("&wildignorecase")
  set wildignorecase
endif
"}}

"Cosmetic {{
syntax enable
colorscheme railscasts
set number         "Line Numbers
set ts=2           "Smaller tab size
set tabstop=2
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets
set t_Co=256
set term=screen-256color
"}}

"MacVim
if has("gui_running")
  set transparency=2
  set guioptions=T
  set guioptions=m
endif
set guifont=Inconsolata\ for\ Powerline:h15
highlight Cursor guifg=white guibg=white
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"For UltiSnips {{
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}

"IndentLine {{
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
"}}

"Airline {{
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_theme="tomorrow"
let g:airline_powerline_fonts=1
"}}

"Emmet {{
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"}}

"SuperTab
let g:SuperTabDefaultCompletionType = "context"
