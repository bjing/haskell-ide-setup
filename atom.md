# Haskell
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

Or you can add the ghc/ghci path to your PATH environment variable in ~/.bashrc or ~/.bash_profile. 
For example:
```
PATH="${HOME}/.stack/programs/x86_64-osx/ghc-8.0.1/bin:${PATH}"
export PATH
```

Alternatively, create some aliases in your shell for the most frequently used commands like `ghc` and `ghci`.
For example:

For example:

```
alias ghc='stack ghc'
alias ghci='stack ghci'
```

# Atom
## Atom packages
```
apm install language-haskell haskell-ghc-mod linter-hlint autocomplete-haskell ide-haskell
```

## Atom configuration
All the executables installed by `stack` sit under ${HOME}/.local/bin/. For Atom to recognise them, either add the directory to your `PATH` environment variable or individually configure each Atom package.

# Screenshots
Real time suggestion
![screenshot](images/screenshot-1.png "Syntax highlighter and linter")

Linter error message in editor
![Compile error in editor](images/screenshot-2.png "Linter telling error expression")


# Visual Studio Code
## Extensions
* Haskell Syntax Highlighting
* haskell ghc-mod

## Hasklig
Download [Hasklig](https://github.com/i-tu/Hasklig).

Install the fonts in OSX's Font Book 

Add the following confiugration in VS Code.
```
"[haskell]": {
  "editor.fontFamily": "Hasklig",
  "editor.fontLigatures": true
}
```
