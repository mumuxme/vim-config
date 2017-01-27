VIM/Gvim rc
===========

- vim version: 7.4 or later.
- os: debian (jessie)


## Dependencies

```
sudo apt-get install exuberant-ctags

git submodule update --init
```

#### Compile YouCompleteMe

Download YouCompleteMe from [ycm homepage](https://github.com/Valloric/YouCompleteMe). 

```
sudo apt-get install build-essential cmake python-dev python3-dev

cd YouCompleteMe
git submodule update --init --recursive

./install.py --clang-completer
```

move `YouCompleteMe` to `vim/bundle/`.


## Install

```
cp -r vim ~/.vim
cp vimrc ~/.vimrc
cp ycm_extra_conf.py ~/.ycm_extra_conf.py
```


## Plugins

Use [pathogen](https://github.com/tpope/vim-pathogen) to manage plugins.

- [IndentLine](https://github.com/Yggdroot/indentLine)
    * A vim plugin to display the indention levels with thin vertical lines.
- [taglist](https://github.com/vim-scripts/taglist.vim)
    * require `exuberant-ctags`
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [vim-auto-save](https://github.com/vim-scripts/vim-auto-save)
- [vim-scala](https://github.com/derekwyatt/vim-scala)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- [Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)
- [vim-licenses](https://github.com/antoyo/vim-licenses)
- vim-haskell
    * combine [vim-haskell-indent](https://github.com/itchyny/vim-haskell-indent) and [haskell-vim](https://github.com/neovimhaskell/haskell-vim)
- [vim-racket](https://github.com/wlangstroth/vim-racket)
- [nerdtree](https://github.com/scrooloose/nerdtree)

