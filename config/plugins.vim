" Bootstrap the plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" awesome-vim-colorschemes
" ~~~~~~~~~~~~~~~~~~~~~~~~
"
" A collection of awesome Vim colorschemes. Most can be used from the CLI & GUI
" versions of (neo)vim.
"
" Reference: https://github.com/rafi/awesome-vim-colorschemes
Plug 'rafi/awesome-vim-colorschemes'

" vim-gitgutter
" ~~~~~~~~~~~~~
"
" This plugin shows Git diff symbols in the gutter to make it easier to
" visualize what has changed as you're working on a file.
"
" Reference: https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Autosaving
Plug '907th/vim-auto-save'

" Code Snippets Engine
Plug 'SirVer/ultisnips'

" vim-snippets
" ~~~~~~~~~~~~
"
" A collection of easy-to-use Vim snippets. These allow for quicker development
" and are actively maintained by a number of contributors.
"
" These snippets are designed to work with the UltiSnips plugin: https://github.com/SirVer/ultisnips
"
" Reference: https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

"" Smart completion (to work with CoC)
""Plug 'zxqfl/tabnine-vim'
"
"" Fuzzy finding
"Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --no-bash' }
"Plug 'junegunn/fzf.vim'
"
"" Custom start page
"Plug 'mhinz/vim-startify'
"
"" Vim Javascript
"Plug 'pangloss/vim-javascript'
"
"" Language Packs
"Plug 'sheerun/vim-polyglot'
"
"" Status bar
""Plug 'vim-airline/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
"
"" Tabular auto-align
"Plug 'godlygeek/tabular'
"
"" Comfy scroll
""Plug 'yuttie/comfortable-motion.vim'
"
"" Add DevIcons
"Plug 'ryanoasis/vim-devicons'
"
"" Tagbar
"Plug 'liuchengxu/vista.vim'
"
"" NERDTree
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"
"" Emoji support
"Plug 'junegunn/vim-emoji'
"
"" goyo distraction free mode
"Plug 'junegunn/goyo.vim'
"
"" LaTeX support
"Plug 'lervag/vimtex'

call plug#end()
