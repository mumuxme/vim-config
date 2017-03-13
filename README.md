Vimrc
======

- os: debian
- my vim version: 8.0

#### NOTE

- `taglist` plugin required `exuberant-ctags`.

#### VundleVim

- Install: `:PluginInstall`
- Update : `:PluginUpdate`
- Clean  : `:PluginClean`

#### Vim-airline

`vim-airline` may need patched fonts, and you may want to use a patched font for your terminal. (NOTE: This is optional.)
See: [powerline/fonts](https://github.com/powerline/fonts)

If you want to get more icons, see: [vim-devicons](https://github.com/ryanoasis/vim-devicons) and [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

You can just download `nerd-fonts`, and run: (you may not need `powerline/fonts` at all.)

```
./install.sh DejaVuSansMono
```

#### Haskell

- [neco-ghc](https://github.com/eagletmt/neco-ghc): ghc-mod completion
- [ghcmod-vim](https://github.com/eagletmt/ghcmod-vim)
- [stylish-haskell](https://github.com/jaspervdj/stylish-haskell)
- [haskell-vim](https://github.com/neovimhaskell/haskell-vim)

You need [vimproc.vim](https://github.com/Shougo/vimproc.vim) installed, see: [Manual Install](https://github.com/Shougo/vimproc.vim#manual-install)

1. Clone vimproc.vim
2. run `make`
3. Copy `autoload`, `lib` and `plugin` to `~/.vim/`

