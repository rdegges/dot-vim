" Make sure compatible mode is disabled
set nocompatible

" Set the right filetypes
augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" Longer leader key timeout
set timeout timeoutlen=1500

" Disable swap files
set noswapfile

" Enable line numbers
set number

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Don't automatically collapse markdown
set conceallevel=0

" Don't display mode in command line (airline already shows it)
set noshowmode

" Automatically re-read file if a change was detected outside of vim
set autoread

" No case-sensitive search unless uppercase is present
set ignorecase
set smartcase

" Find the next match as we're typing the search term
set incsearch

" Highlight search results
set hlsearch

" Allow a new buffer to be opened without saving current
set hidden

" Statusline Config
set statusline+=%F
set cmdheight=1

" Tab Settings
"set expandtab
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"set smarttab
"set autoindent
"set smartindent
"set shiftround

" Enable syntax highlighting
syntax on

" Print syntax highlighting.
set printoptions+=syntax:y

" Matching braces/tags
set showmatch

" No line wrapping
set nowrap

" Turns on detection for filetypes, indentation files and plugin files
filetype plugin indent on

" Share yank buffer with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show 3 columns to the left and right of the cursor
if !&sidescrolloff
    set sidescrolloff=3
endif

" Show 3 columns horizontally
if !&sidescroll
    set sidescroll=3
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Jump to the last known position when reopening a file.
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
endif

" Enable backspace in insert mode
set backspace=indent,eol,start

" Store lots of history
set history=1000

" Show incomplete commands
set showcmd

" Show unprintable chars
set list

" Make tabs, trailing whitespace, and EOL characters visible
"set listchars=tab:▸\ ,trail:·,eol:¬

" Store all change info
set undodir=~/.vim/undodir

" Write changes to the undo file
set undofile

" Allow a lot of undos
set undolevels=1000
set undoreload=10000

" Fold based on indent
set foldmethod=indent

" Fold up to three levels deep
set foldnestmax=3

" Fold by default
set foldenable

" Update vim every 3 seconds
set updatetime=3000
