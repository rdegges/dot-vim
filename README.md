# .vim

My vim dotfiles.


## Installation

The below commands will download the project, and install all Vim plugins and
dependencies.

**NOTE**: These instructions you already have `vim` installed on your operating
system.

``` bash
$ git clone git@github.com:rdegges/dot-vim.git ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
$ cd ~/.vimrc
$ git submodule init
$ git submodule update
$ vim +BundleInstall +qall
```
