" fugitive.vim
" ============
"
" Make Git commands simple and intuitive.
"
" <leader>gs
"   Display ``git status`` output in an interactive split. Press - to add /
"   reset a file's changes, or p to add / reset --patch that mofo.
"
" <leader>gd
"   Bring up the staged version of the file side by side with the working tree
"   version and use Vim's diff handling capabilities to stage a subset of the
"   file's changes.
"
" <leader>gci
"   Display ``git commit`` output in an interactive split.
"
" <leader>gm <newname>
"   Do a ``git move`` on the current file and rename it to <newname>.
"
" <leader>grm
"   Do a ``git remove`` on the current file.
"
" <leader>gbl
"   Display ``git blame`` output in an interactive split. Press enter on a line
"   to reblame the file as it stood in that commit, or o to open that commit in
"   a split. When you're done, use :Gedit in the historic buffer to go back to
"   the work tree version.
"
" <leader>gl
"   Loads all previous revisions of a file into the quickfix list so you can
"   iteratve over them and watch the file evolve!
"
" <leader>gg <pattern>
"   Search the work tree for <pattern> using ``git grep``.
"
" <leader>gr
"   A variant of ``git checkout -- filename`` that operates on the buffer
"   rather than the filename. This means you can use u to undo it and never get
"   any warnings about the file changing outside Vim.
"
" <leader>gw
"   Writes to both the work tree and index versions of the file, making it like
"   ``git add`` when called from a work tree file and like ``git checkout``
"   when called from the index or a blob in history
"
" <leader>gl
"   Loads all previous revisions of a file into the quickfix list so you can
"   iteratve over them and watch the file evolve!
"
" <leader>gg <pattern>
"   Search the work tree for <pattern> using ``git grep``.
"
" <leader>gr
"   A variant of ``git checkout -- filename`` that operates on the buffer
"   rather than the filename. This means you can use u to undo it and never get
"   any warnings about the file changing outside Vim.
"
" <leader>gw
"   Writes to both the work tree and index versions of the file, making it like
"   ``git add`` when called from a work tree file and like ``git checkout``
"   when called from the index or a blob in history.
"
" <leader>gbr
"   Open this file on Github using your default browser.
"
" <leader>g <command>
"   Run an arbitrary Git command!
"
" <leader>gp
"   Run ``git push``.


nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gbl :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gg :Ggrep
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gbr :Gbrowse<cr>
nnoremap <leader>g :Git
nnoremap <leader>gp :Git push<cr>
