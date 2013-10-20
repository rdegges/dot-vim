" vundle.vim
" ==========
"
" Make Vundle commands easy, quick, and intuitive to run.
"
" <leader>vl
"   Display a list of installed bundles.
"
" <leader>vi
"   Install all bundles defined ~/.vim.scripts.
"
" <leader>vu
"   Update all bundles.
"
" <leader>vs <name>
"   Search for a Vim script by name. Searches use the official Vim Scripts
"   website: http://vim-scripts.org/vim/scripts.html.
"
" <leader>vc
"   Remove all bundles that are no longer defined in ~/.vim.scripts.


nnoremap <leader>vl :BundleList<cr>
nnoremap <leader>vi :BundleInstall<cr>
nnoremap <leader>vu :BundleInstall!<cr>
nnoremap <leader>vs :BundleSearch!
nnoremap <leader>vc :BundleClean!<cr>
