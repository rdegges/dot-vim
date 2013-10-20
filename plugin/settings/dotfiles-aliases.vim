" dotfiles-aliases.vim
" ====================
"
" A group of helpful key aliases for common tasks.


" Allow quick vimrc editing.
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

" Instantly reload vimrc.
nnoremap <leader>vr :source $MYVIMRC<cr>

" Removing all trailing whitespace in the file.
nnoremap <leader>rs :%s/\s\+$<cr>
