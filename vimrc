" Use Vim settings, rather then Vi settings (much better!). This must be
" first, because it changes other options as a side effect.
set nocompatible


" ========== Vundle Initialization ==========
" Required for Vundle to work properly. Disabled file type detection.
filetype off

" This loads all the plugins in ~/.vim/bundle.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Install and manage all our Vim scripts using Vundle. To install (or update)
" all these scripts at once, run:
"
"   :BundleInstall
"
" To remove unused scripts, run:
"
"   :BundleClean
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/python.vim--Vasiliev'
Bundle 'vim-scripts/django.vim'
Bundle 'tpope/vim-markdown'
Bundle 'Shougo/neocomplcache'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'mikewest/vimroom'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/matchit.zip'
Bundle 'jnwhiteh/vim-golang'
Bundle 'altercation/vim-colors-solarized'
Bundle 'digitaltoad/vim-jade'

" Reactivate file type support.
filetype plugin indent on

" ========== Leader Config ==========

" Make , the default shortcut key. This allows us to easily add custom
" key mappings later on without breaking any of Vim's default functionality.
let mapleader=","

" ========== General Config ==========

set number                      " Line numbers are good.
set backspace=indent,eol,start  " Allow backspace in insert mode.
set history=1000                " Store lots of :cmdline history.
set showcmd                     " Show incomplete cmds down the bottom.
set showmode                    " Show current mode down the bottom.
set hidden                      " Allow buffers to exist in the background.
set autoread                    " Reload files changed outside vim
set list                        " Display unprintable characters.
set listchars=tab:▸\ ,trail:·,eol:¬ " Make tabs, trailing whitespace, and EOL characters easy to spot.
syntax on                       " Enable syntax highlighting.

" ========== Search Settings ==========

set incsearch                   " Find the next match as we type the search.
set smartcase                   " Search by case only if specified.
set hlsearch                    " Hilight searches by default.
set ignorecase                  " Allow case searches.
set viminfo='100,f1             " Save up to 100 marks, enable capital marks.

" ========== Swap Files ==========

set noswapfile                  " Don't use a swapfile for buffers.
set nobackup                    " Disable file backups when writing files.
set nowritebackup               " Don't backup before overwriting files.

" ========== Persistent Undo ==========

set undodir=~/.vim/undodir      " Store all change information in a undodir.
set undofile                    " Write changes to the undofile.
set undolevels=1000             " Maximum number of changes that can be undone.
set undoreload=10000            " Maximum number lines to save for undo on a buffer reload.

" ========== Indentation ==========

set autoindent                  " Copy indent from current line when starting a new line.
set smartindent                 " Do smart autoindenting when starting a new line.
set smarttab                    " A <tab> in front of a line inserts spaces.
set shiftwidth=4                " Number of spaces to use for each step of autoindent.
set softtabstop=4               " Number of spaces that a <tab> counts for while editing.
set tabstop=4                   " Number of spaces that a <tab> in the file counts for.
set expandtab                   " Use the appropriate number of spaces to insert a <tab>.

" Set smaller tab settings for HTML type stuff.
au FileType coffee,javascript,css,xml,xhtml,html,htmldjango,haml,json set shiftwidth=2 tabstop=2

" ========== Editor Width ==========

set nowrap                      " Don't wrap lines.
set linebreak                   " Wrap lines when convenient. This doesn't effect text, only display.
set textwidth=79                " Make all lines 79 chars or less.

" ========== Filetype Config ==========

filetype plugin on              " Automatically load filetype specific configs.
filetype indent on              " Automatically load filetype specific indent configs.

" ========== Folds ==========

set foldmethod=indent           " Fold based on indent.
set foldnestmax=3               " Limit folds to three levels of depth.
set foldenable                  " Fold by default.

" ========== Completion ==========

set wildmode=list:longest       " When more than one match, list all and look for the longest.
set wildmenu                    " Auto complete command line operations using <tab> and <ctr-p>/<ctr-n>.
set wildignore=*.o,*.obj,*~     " Filenames to ignore when auto completing.
set wildignore+=*vim/backups*   " (continued)
set wildignore+=*.pyc,*.pyo     " (continued)

" ========== Scrolling ==========

set scrolloff=8                 " Minimal number of screen lines to keep above and below the cursor.
set sidescrolloff=15            " Minimal number of screen columns to keep to the left and the right of the cursor.
set sidescroll=1                " Minimal number of columns to scroll horizontally.

" ========== Reload ==========

" Automatically reload Vim if you make changes to vimrc.
augroup reloadvim
    au!
    au BufWritePost .vimrc source $MYVIMRC
augroup end

" ========== neocomplcache ==========

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_auto_completion_start_length = 3

" ========== delimitMate ==========

let g:delimitMate_autoclose = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_smart_matchpairs = 1
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_excluded_ft = "mail,help"

" ========== vimroom ==========

let g:vimroom_ctermbackground = "black"
let g:vimroom_width = 79
nnoremap <leader>V :VimroomToggle<cr>

" ========== syntastic ==========

let g:syntastic_check_on_open = 1
let g:syntastic_python_flake8_post_args = "--ignore=E251,E128"

" ========== vim-gitgutter ==========

let g:gitgutter_enabled = 1

" ========== go.vim ==========
set rtp+=~/.vim/bundle/vim-golang/

autocmd FileType go autocmd BufWritePre <buffer> Fmt
