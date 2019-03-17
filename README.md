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

Before installing this repo, please follow the installation instructions for the
YouCompleteMe project: https://github.com/Valloric/YouCompleteMe

This is required for syntax tab completion.

The below commands will download the project, and install all Vim plugins and
dependencies.

**NOTE**: These instructions assume you already have `vim` installed on your operating
system.

```bash
sudo apt install cmake
sudo apt install golang-go
sudo apt install python3-venv
sudo apt install tidy

npm i -g csslint
npm i -g eslint
npm i -g jsonlint
npm i -g prettier
npm i -g prettydiff
npm i -g pug-beautifier
npm i -g pug-lint
npm i -g stylint
npm i -g typescript

gem install sqlint
gem install mdl

pip install flake8
pip install proselint
pip install rstcheck

PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.7.0

mkdir -p ~/.config/nvim
mkdir -p ~/.config/proselint

git clone --recursive git@github.com:rdegges/dot-vim.git ~/.vim
ln -s ~/.vim/init.vim ~/.config/nvim/init.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/eslintrc.json ~/.eslintrc.json
ln -s ~/.vim/proselintrc.json ~/.config/proselint/config

vim +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe
python install.py --clang-completer --go-completer
```
