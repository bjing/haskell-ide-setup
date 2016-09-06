## Stack
Get stack through homebrew. We use `stack` here because cabal seems to have problem installing ghc-mod; it cannot automatically resolve the dependencies required for the package.

- Uninstall existing Haskell packages and install stack.

  ```
  brew uninstall cabal-install haskell-platform
  brew install haskell-stack
  ```

- Initialise the environment for stack before use. This will install the basic Haskell toolchain.

  ```
  stack setup
  ```

## Other utils
Backend linter and editor tools we need.

```
stack install hlint
stack install ghc-mod
```

## Aliases
Unlike cabal, you need to start all the Haskell tools through stack like this:

```
stack ghci
```

Alternatively you can create some aliases in your shell for the most frequently used commands like `ghc` and `ghci`.

For example:

```
alias ghc='stack ghc'
alias ghci='stack ghci'
```

# VIM
Stephen Diehl has a very comprehensive guide on setting up a Haskell development environment in VIM.

[Vim and Haskell in 2016 by Stephen Diehl](http://www.stephendiehl.com/posts/vim_2016.html)

## Example configuration
Here's my own VIM configuration file. User it as a reference.
[.vimrc](../blob/master/config/.vimrc)
