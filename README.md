VIM/Gvim rc
===========

Note:

- vim version: 7.4 or later.
- os: debian (jessie)


Install
--------

`git submodule update --init` (you may NOT use `--recursive`)

Rename:

- vim --> .vim
- vimrc --> .vimrc

move all to your `home` directory.


Plugins
--------

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


### Instal YouCompleteMe

[ycm homepage](https://github.com/Valloric/YouCompleteMe)

#### compile

Download the latest version of `libclang` from <http://llvm.org/releases/download.html> (choose Pre-Built Binaries), extract and rename to `clang`(for convenience).

Install `cmake` and python dev

`apt-get install cmake python-dev python3-dev`

Then `mkdir ycm_build`, now suppose the dierctory tree just as the following:

```
├── test
│   ├── clang
│   ├── ycm_build
│   └── YouCompleteMe
```

Update submodule:

```
cd YouCompleteMe
git submodule update --init --recursive
```

Generator build file:

```
cd ../ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=../clang . ../YouCompleteMe/third_party/ycmd/cpp
```

Compile the libraries: (you can ignore `--config Release` on linux)

```
cmake --build . --target ycm_core --config Release
```

Then enjoy it.

(After compiling, just `find . -type f -name '.git*' -exec rm {} +`, and rename it to `ycm_bin` and move it to `vim/bundle`)

