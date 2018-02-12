# Introduction
In this document I'll list the editors/IDEs I've personally used and the way how you can configured them to work with Haskell to have features like:
* auto complete
* syntax highlighting
* linting

I will try to keep these instructions up-to-date. However, feel free to send PR requests if you spot anything wrong or out-of-date.

# Haskell Tools
Haskell tools like linters, formatters need to be installed correctly in order for editors to use them. Since I use [stack](https://docs.haskellstack.org/en/stable/README/) personally, I'll discuss the correct way to install these tools using `stack`.

## Installation

### The wrong way
A lot of people use `stack install` to install tools like `hlint`, `ghc-mod` or `intero`, which by default puts the binaries into ~/.local/bin. This is a very bad idea because these "globally" installed tools only work with a specific version of GHC. If you have multiple projects that use multiple versions of GHC, then your editor won't work with all the projects; or if you later upgrade to a higher version of GHC these tools will simply stop working.

### The right way
Install these tools per project, which means go into each project's directory and do something like this
```shell
stack build intero hlint
```
Doing this for every project takes time because each time they have to be downloaded and built. Fortunately there's a way to only build these tools once for each version of GHC on your system. Simply pass `--copy-compiler-tool` when building them like the following
```shell
## Faster for subsequent builds for a specific GHC version
stack build --copy-compiler-tool intero hlint
```

### Tools to install
* `intero` - provides fully featured IDE features
* `ghc-mod` - provides fully featured IDE features
* `hlint` - linter
* `stylish-haskell` - auto code fomatter
* `apply-refact` - required by hlint-refactor
* `hasktags` - produces ctags "tags" and etags TAGS files for Haskell programs
* `hoogle` - provides api doc lookup
* [`Hasklig`](https://github.com/i-tu/Hasklig)

#### Putting it all together
Apart from Hasklig which requires manual [download](https://github.com/i-tu/Hasklig), I usually install them like this:
```shell
stack build --copy-compiler-tool intero hlint stylish-haskell hasktags hoogle apply-refact
```


# IDE/Editor Configuration

[Atom](atom.md)

[Vim](vim.md)

[Spacemacs](spacemacs.md)

[Visual Studio Code](vscode.md)
