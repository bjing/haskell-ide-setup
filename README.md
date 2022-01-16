# Introduction
In this document I list all editors/IDEs I've personally used and the way to configure them to work with Haskell to have features like:
* auto complete
* syntax highlighting
* linting
* formatting

I will try to keep these instructions up-to-date. However, feel free to send PR requests if you spot anything wrong or out-of-date.

# Haskell Tools
The tools you'll need:
* GHC (the compiler)
* Build tools, `Stack` or `Cabal`
* HLS (Haskell Language Server, this is the only IDE engine you need)
* other tools like `hlint`, `stylish-haskell`, `hasktags`, `hoogle` etc, choose whatever you need.

The easiest way to get started with Haskell is to use [GHCup](https://www.haskell.org/ghcup/).

Since I use [stack](https://docs.haskellstack.org/en/stable/README/) personally, I'll discuss the correct way to install these tools using `stack` as well.

## Installation (GHCup)
Install GHCup on Unix-like systems:
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

Frequently run this command to upgrade GHCup:
```
ghcup upgrade
```

List available tools you can install and have installed:
```
ghcup list
```

Install GHC
```
# latest
ghcup install ghc

# or a specific version
ghcup install ghc 8.10.7
```

Install build tools.
```
ghcup install stack
ghcup install cabal
```

Install `haskell-language-server`, this is what will provide IDE capabilities in your editor (VSCode, VIM, Emacs etc)
```
ghcup install hls
```

All versions of binaries will be installed in `~/.ghcup/bin`.
Please browse this directory to get familiar with how files are organised, and make sure the relevant version is under your `$PATH` env var for easy access.


## Installation (Stack)

### The wrong way
A lot of people use `stack install` to install tools like `hlint` and `stylish-haskell`, which by default puts the binaries into ~/.local/bin. This is a very bad idea because these "globally" installed tools only work with a specific version of GHC. If you have multiple projects that use multiple versions of GHC, then your editor won't work with all the projects; or if you later upgrade to a higher version of GHC these tools will simply stop working.

### The right way
Install these tools per project, which means going into each project's directory and doing something like this
```shell
stack build hlint
```
Doing this for every project takes time because each time they have to be downloaded and built. Fortunately there's a way to only build these tools once for each version of GHC on your system. Simply pass `--copy-compiler-tool` when building them like the following
```shell
## Faster for subsequent builds for a specific GHC version
stack build --copy-compiler-tool stylish-haskell
```

### Tools to consider
* [haskell-language-server] - one IDE to rule them all
* [stylish-haskell] - code fomatter
* [hlint] - linter
* [apply-refact] - required by hlint-refactor
* [hasktags] - produces ctags "tags" and etags TAGS files for Haskell programs
* [hoogle] - provides api doc lookup
* [Hasklig] - ligrature for pretty operators

#### Putting it all together
Apart from Hasklig which requires manual [download](https://github.com/i-tu/Hasklig), I usually install them like this:
```shell
stack build --copy-compiler-tool hlint apply-refact stylish-haskell hasktags hoogle
```

# IDE/Editor Configuration

[Spacemacs](spacemacs.md) - for full keyboard operation

[VIM/Neovim](vim-and-neovim.md) - for full keyboard operaton

[Visual Studio Code](vscode.md) - easiest to get started and works reasonably well 

[Atom](atom.md) - does anyone still use Atom? If yes, feel free to contribute

[apply-refact]: https://github.com/mpickering/apply-refact
[haskell-language-server]: https://github.com/haskell/haskell-language-server
[Hasklig]: https://github.com/i-tu/Hasklig
[hasktags]: https://github.com/MarcWeber/hasktags
[hlint]: https://github.com/ndmitchell/hlint
[hoogle]: https://github.com/ndmitchell/hoogle
[stylish-haskell]: https://github.com/haskell/stylish-haskell
