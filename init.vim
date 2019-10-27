set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" General neovim configs
source ~/.vim/config/main.vim

" Plugins
source ~/.vim/config/plugins.vim

" Plugin settings
source ~/.vim/config/plugin-settings.vim

" Mappings
source ~/.vim/config/mappings.vim
