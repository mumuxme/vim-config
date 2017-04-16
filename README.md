Vimrc
======

- os: debian
- my vim version: 8.0

#### NOTE

- Need `exuberant-ctags` installed.


## Vim-plug

See: <https://github.com/junegunn/vim-plug>

### Commands

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


## Vim-airline

`vim-airline` may need patched fonts, and you may want to use a patched font for your terminal. (NOTE: This is optional.)
See: [powerline/fonts](https://github.com/powerline/fonts)

If you want to get more icons, see: [vim-devicons](https://github.com/ryanoasis/vim-devicons) and [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

You can just download `nerd-fonts`, and run: (you may not need `powerline/fonts` at all.)

```
./install.sh DejaVuSansMono
```


## Haskell

- [neco-ghc](https://github.com/eagletmt/neco-ghc): ghc-mod completion
- [ghcmod-vim](https://github.com/eagletmt/ghcmod-vim)
- [stylish-haskell](https://github.com/jaspervdj/stylish-haskell)
- [haskell-vim](https://github.com/neovimhaskell/haskell-vim)

```
cabal install apply-refact hlint stylish-haskell hasktags hoogle ghc-mod
```

