# Haskell
## stack
Get stack through homebrew. We use stack here because cabal seems to have problem installing ghc-mod; it cannot automatically resolve the dependencies required for the package.

`brew install haskell-stack`
Initialise the environment for stack before
`stack setup`

## other utils
Backend linter and editor tools we need.
`stack install hlint`
`stack install ghc-mod`

# Atom
## Atom packages
` apm install language-haskell haskell-ghc-mod linter-hlint autocomplete-haskell ide-haskell`

## Atom configuration
All the executables installed by `stack` sit under ${HOME}/.local/bin/. For Atom to recognise them, either add the directory to your `PATH` environment variable or individually configure each addon.
