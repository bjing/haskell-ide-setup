# Haskell
## Stack
Get stack through homebrew. We use stack here because cabal seems to have problem installing ghc-mod; it cannot automatically resolve the dependencies required for the package.

`brew install haskell-stack`

Initialise the environment for stack before

`stack setup`

## Other utils
Backend linter and editor tools we need.

`stack install hlint`

`stack install ghc-mod`

## Aliases
Unlike cabal, you need to start up all the Haskell tools through stack like this

`stack ghci`

You can create some aliases in your shell for the most frequently used commands like `ghc` and `ghci`.


# Atom
## Atom packages
` apm install language-haskell haskell-ghc-mod linter-hlint autocomplete-haskell ide-haskell`

## Atom configuration
All the executables installed by `stack` sit under ${HOME}/.local/bin/. For Atom to recognise them, either add the directory to your `PATH` environment variable or individually configure each addon.
