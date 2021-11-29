# Installation
To install Spacemacs, there's nothing better than referring to the official [Spacemacs installation manual](https://github.com/syl20bnr/spacemacs#install).
For the lazy, howver here's some quick instructions.
## Mac OSX
```shell
# Install Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --HEAD --with-natural-title-bars
brew linkapps emacs-plus

# (Optional) back up your existing emacs config
cd ~
mv .emacs.d .emacs.d.bak
mv .emacs .emacs.bak

# Clone Spacemacs repository
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

Optionally you can install the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font, which is used by Spacemacs by default.

## Linux or Mac OSX
Since there are many Linux distributions, I can't cover them all here. It's also pointless to make assumption of what distribution you use, so I'll leave it to you to figure out how to install `Emacs`. I'm sure gurus like you know exactly how to install Emacs for your distribution.

After you've installed Emacs, Back up your existing Emacs config if you want to keep it.
```shell
cd ~
mv .emacs.d .emacs.d.bak
mv .emacs .emacs.bak
```

Then simply clone the Spacemacs repo into your home directory.
```shell
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

## Windows
Download Emacs [here](http://emacsbinw64.sourceforge.net/). It is recommended to install the most recent stable build.

Be sure to declare a environment variable named HOME pointing to your user directory C:\Users\<username>. Then you can clone Spacemacs in this directory.


# Haskell Configuration
Put the following configuration in your `~/.spacemacs` file under `dotspacemacs-configuration-layers`:
```emacs
dotspacemacs-configuration-layers
   '(
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-private-snippets-directory nil

                      ;; the following are default behaviours, change per your needs
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1)
     (haskell :variables
              haskell-completion-backend 'lsp
              haskell-enable-hindent-style "johan-tibell"))
     neotree
     syntax-checking
    )
```
After adding the above config, relaunch your Spacemacs editor using `SPC q r`

# How to use

Please refer to
* [Spacemacs documentation](https://develop.spacemacs.org/doc/DOCUMENTATION.html)
* [Spacemacs Haskell Layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/haskell#refactor)
* [Spacemacs Neotree layer](https://develop.spacemacs.org/layers/+filetree/neotree/README.html)
for shortcut keys and usages.
