set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8

"Vundle Stuff {{
call vundle#begin()
  "Plugin manager
  Plugin 'gmarik/Vundle.vim'

  "Pretty statusline with themes
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  "Add support for tons of languages
  Plugin 'sheerun/vim-polyglot'
  Plugin 'octol/vim-cpp-enhanced-highlight'

  "snipmate dependencies and snipmate
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'

  "since snipmate doesnt come with snippets out of the box i use vim-snippets that comes with a bunch of snippets out of the box
  Plugin 'honza/vim-snippets'

  "Add indentation lines
  Plugin 'Yggdroot/indentLine'

  "Project tree
  Plugin 'scrooloose/nerdtree'

  "Easily comment select area. This relies on visual mode, i should feel bad for using visual mode and this plugin.
  Plugin 'scrooloose/nerdcommenter'

  "Personal Theme I use
  Plugin 'jpo/vim-railscasts-theme'

  "Fuzzy file finder. Probably will uninstall this when using neovim.
  Plugin 'ctrlpvim/ctrlp.vim'

  "Easy change of surroundings. I should stop being lazy and write a script in vim instead of using a plugin for this.
  Plugin 'tpope/vim-surround'

  "Insert brackets, parens, quotes in pair
  Plugin 'jiangmiao/auto-pairs'

  "Show git diff when writing file
  Plugin 'airblade/vim-gitgutter'

  " Allow tab for insert completion 
  Plugin 'ervandew/supertab'

  " Probably will delete this, still not sure
  "Plugin 'tpope/vim-endwise'
  "Plugin 'godlygeek/tabular'
  "Plugin 'terryma/vim-expand-region'
call vundle#end()

filetype plugin indent on
"}}

"Leader key related mappings {{
"
"Personal preference of using space as my leader key
let mapleader="\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
"Allow leader copy and pasting with clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
"Visual entire line
nmap <Leader><Leader> V
"Use jj as escape key
imap jj <Esc>
"}}

"Disable arrows, who needs them anyway?{{
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

"General {{
set autoread
set autoindent
set incsearch      "Move cursor to search result as you type

"Not sure if I'm gonna remove this
"set autoindent
"set smartindent

"Spaces indentation
set shiftwidth=2
set softtabstop=2 

set expandtab      "Convert tabs to spaces
set ignorecase     "Search is not case sensitive
set scrolloff=20   "Always keep a space of 20 lines from bottom

"Allow for command line completion
set wildmenu
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
set number         "Show line Numbers
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets
set t_Co=256
if !has('nvim')
  set term=screen-256color
endif
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

"For UltiSnips {{
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}

"IndentLine {{
let g:indentLine_color_term = 239
let g:indentLine_char = '.'
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

"SuperTab
let g:SuperTabDefaultCompletionType = "context"
