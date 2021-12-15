# Installation
To install Spacemacs, there's nothing better than referring to the official [Spacemacs installation manual](https://github.com/syl20bnr/spacemacs#install).
For the lazy, howver here's some quick instructions.

## Mac OSX and Linux
```shell
# Install Emacs macOS
brew tap d12frosted/emacs-plus
brew install emacs-plus --HEAD --with-natural-title-bars
brew linkapps emacs-plus

# Install Emacs Linux (omitted)

# (Optional) back up your existing emacs config
mv ~/.emacs.d ~/.emacs.d.bak
mv ~/.emacs ~/.emacs.bak

# Clone Spacemacs repository
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

Optionally you can install the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font, which is used by Spacemacs by default.

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
     (haskell         :variables
                      haskell-completion-backend 'lsp
                      haskell-process-type 'stack-ghci
                      haskell-enable-hindent t
                      haskell-enable-hindent-style "johan-tibell")
     neotree
     syntax-checking
    )
    
;; Add the following to the top level of your ~/.spacemcas.
;; This gives you the correct indentation when you press ENTER from an empty line
(defun haskell-indentation-advice ()
  (when (and (< 1 (line-number-at-pos))
             (save-excursion
               (forward-line -1)
               (string= "" (s-trim (buffer-substring (line-beginning-position) (line-end-position))))))
    (delete-region (line-beginning-position) (point))))

(advice-add 'haskell-indentation-newline-and-indent
            :after 'haskell-indentation-advice)
```
After adding the above config, relaunch your Spacemacs editor using `SPC q r`

# How to use

Please refer to
* [Spacemacs documentation](https://develop.spacemacs.org/doc/DOCUMENTATION.html)
* [Spacemacs Haskell Layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/haskell#refactor)
* [Spacemacs Neotree layer](https://develop.spacemacs.org/layers/+filetree/neotree/README.html)
for shortcut keys and usages.
