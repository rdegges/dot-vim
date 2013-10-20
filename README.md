# dot-vim

My vim dotfiles.

These are primarily optimized for my own personal usage, but feel free to use
them for whatever you'd like.

They're geared towards Python web development, and contain niceties which make
writing code using the following tools much simpler:

- Python
- HTML
- Javascript
- Git


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
