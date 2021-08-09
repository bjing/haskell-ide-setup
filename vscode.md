## VS Code Extensions
Install the following extensions within VS Code.
* [Haskell]
* [stylish-haskell]
* [hoogle-vscode]

Read on for details and usage info.

### The Haskell Extension
The [Haskell] extension is the most important extension out of the bunch, it supports the following
* syntax highlighting
* auto complete
* jump to definition (Alt + left click)
* type info on hover
* function documentation on hover
* code suggestion

If the [Haskell] extension doesn't work, make sure your GHC is the latest LTS snapshot.

### Stylish Haskell
stylish-haskell is a decent Haskell code formatter.

The extension requires the actual tool be installed:
```
stack install stylish-haskell
```

In Settings, make sure:
* `Formatter Provider` is set,
* VSCode formats on
  * file save, and
  * on import

Saving file or pasting imports will auto-format.

Default shortcut is `Alt + Shift + f`, or type `format document` in command palette.

### Hoogle
This extension allows you to search hoogle within VS Code.

Default shortcut is `Alt + Shift + h`, or type `hoogle search` in command palette.

## Hasklig
This makes your operators pretty.

Download [Hasklig](https://github.com/i-tu/Hasklig).

Install the fonts in OSX's Font Book

Add the following confiugration in VS Code.
```
"[haskell]": {
  "editor.fontFamily": "Hasklig",
  "editor.fontLigatures": true
}
```

[Haskell]: https://marketplace.visualstudio.com/items?itemName=haskell.haskell
[hoogle-vscode]: https://marketplace.visualstudio.com/items?itemName=jcanero.hoogle-vscode
[stylish-haskell]: https://marketplace.visualstudio.com/items?itemName=vigoo.stylish-haskell
