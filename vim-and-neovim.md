# VIM/Neovim

## Install VIM/Neovim.
MacOS
```
brew install vim
# and/or
brew install neovim
```
Linux gurus, you know what to do :).

What? Windows? Sorry bud.


## Vim Plug
[Vim Plug](https://github.com/junegunn/vim-plug) is a minimalist VIM plugin
manager. I choose to use it mainly because of the expressiveness of the plugin
config, which is easy to share and for others to replicate.

Install Vim Plug:
```shell
# For VIM
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# For Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

For Neovim, put the following plugin config in `~/.config/nvim/init.vim`
```vim
call plug#begin("~/.config/nvim/plugged")
" Plugin Section
 Plug 'dracula/vim', {'as': 'dracula'}
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
 Plug 'EdenEast/nightfox.nvim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'PhilRunninger/nerdtree-visual-selection'
 Plug 'preservim/nerdcommenter' | Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovimhaskell/haskell-vim'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'alx741/vim-stylishask'
 Plug 'alx741/vim-hindent'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'chrisbra/csv.vim'
 " For Hoogle
 Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
 Plug 'monkoose/fzf-hoogle.vim'

call plug#end()
```
For VIM, simply put the above in `~/.vimrc` and replace `~/.config/nvim/plugged` 
by `~/.vim/plugged` in the first line.

Enter `vim` or `nvim` and run the following to install all the plugins defined above:
```shell
:PlugInstall
```

## CoC
For specific language support in CoC, refer to the list of [CoC extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions).

### Configure CoC for Haskell
In `vim` or `nvim`, run `:CocConfig` and add the following Haskell-related config:
```json
{
  "languageserver": {
    "haskell": {
      "command": "haskell-language-server-wrapper",
      "args": [
        "--lsp"
      ],
      "rootPatterns": [
        ".stack.yaml",
        "*.cabal",
        "cabal.config",
        "package.yaml",
        ".hie-bios",
        "hie.yaml",
        "BUILD.bazel"
      ],
      "filetypes": [
        "hs",
        "lhs",
        "haskell"
      ],
      "initializationOptions": {
        "languageServerHaskell": {
          "hlintOn": true,
          "maxNumberOfProblems": 10,
          "completionSnippetsOn": true
        }
      }
    }
  },
  "suggest.disableKind": true,
  "suggest.snippetsSupport": false,
  "suggest.echodocSupport": true,
  "suggest.maxCompleteItemCount": 20,
  "coc.preferences.formatOnType": true,
  "coc.preferences.formatOnSaveFiletypes": [
    "haskell",
    "json"
  ],
  "coc.preferences.enableMarkdown": true,
  "coc.preferences.jumpCommand": "tab drop",
  "codeLens.enable": true,
  "diagnostic.virtualText": true,
  "diagnostic.virtualTextCurrentLineOnly": false,
  "diagnostic.virtualTextLines": 1,
  "diagnostic.virtualTextPrefix": " —— ",
  "diagnostic.errorSign": "•",
  "diagnostic.warningSign": "•",
  "diagnostic.infoSign": "•"
}
```

## Misc
Choose a good [colorscheme](https://github.com/topics/neovim-colorscheme).
This is very important as colour scheme can either make your code easy to
read, or make your life miserable.

## Example Neovim config
My Neovim config can be found [here](config/init.vim).

