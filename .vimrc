"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Machado/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/Machado/.config/nvim/dein')
  call dein#begin('/Users/Machado/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/Machado/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  "Pretty statusline with themes
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  "Add support for tons of languages
  call dein#add('sheerun/vim-polyglot')
  call dein#add('octol/vim-cpp-enhanced-highlight')

  "Add indentation lines
  call dein#add('Yggdroot/indentLine')

  "Project tree
  call dein#add('scrooloose/nerdtree')

  "Easily comment select area. This relies on visual mode, i should feel bad for using visual mode and this plugin.
  call dein#add('scrooloose/nerdcommenter')

  "Personal Theme I use
  call dein#add('jpo/vim-railscasts-theme')

  "Fuzzy file finder. Probably will uninstall this when using neovim.
  call dein#add('ctrlpvim/ctrlp.vim')

  "Easy change of surroundings. I should stop being lazy and write a script in vim instead of using a plugin for this.
  call dein#add('tpope/vim-surround')

  "Insert brackets, parens, quotes in pair
  call dein#add('jiangmiao/auto-pairs')

  "Show git diff when writing file
  call dein#add('airblade/vim-gitgutter')

  " Allow tab for insert completion 
  call dein#add('ervandew/supertab')

  "Neovim linting
  call dein#add('w0rp/ale')

  "Neovim completion
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


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
set guifont=*
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

" NeoSnipeet key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

call deoplete#enable()
