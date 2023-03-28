[Horia][repo]'s dotfiles
=======================================

Table of Contents
-----------------

* [🔧 Setup](#setup)
* [💄 Customize](#customize)
  * [🌐 Local Settings](#local-settings)
    * [🐚 `~/.bash.local`](#bashlocal)
    * [🔁 `~/.gitconfig.local`](#gitconfiglocal)
    * [⌨️  `~/.vimrc.local`](#vimrclocal)
    * [⌨️  `~/.zshrc.local`](#zshrclocal)
* [↕️  Useful Links](#useful-links)
* [📑 License](#license)

Setup
-----

To set up the dotfiles run the appropriate snippet in the terminal:

| OS | Snippet |
|:---|:---|
| macOS | `bash -c "$(curl -LsS https://raw.github.com/horia-delicoti/dotfiles/master/src/os/setup.sh)"` |
| Ubuntu |  |

Customize
---------

### Local Settings

The dotfiles can be easily extended to suit additional local
requirements by using the following files:

#### `~/.bash.local`

The `~/.bash.local` file will be automatically sourced after all
the other [Bash related files][shell], thus, allowing its content
to add to or overwrite the existing aliases, settings, `PATH`, etc.

#### `~/.gitconfig.local`

The `~/.gitconfig.local` file will be automatically included after
the configurations from `~/.gitconfig`, thus, allowing its content
to overwrite or add to the existing Git configurations.

#### `~/.vimrc.local`

The `~/.vimrc.local` file will be automatically sourced after
`~/.vimrc`, thus, allowing its content to add or overwrite the
settings from `~/.vimrc`.

#### `~/.zshrc.local`

The `~/.zshrc.local` file will be automatically sourced after
`~/.zshrc`, thus, allowing its content to add or overwrite the
settings from `~/.zshrc`.

## Useful links
- [iTerm2 + zsh + oh-my-zsh The Most Power Full Terminal on macOS (2021 Guide + macOS Big Sur)](https://chamikakasun.medium.com/iterm2-zsh-oh-my-zsh-the-most-power-full-terminal-on-macos-2021-guide-macos-big-sur-5bb498976dc9)
- [The definitive iterm2 and oh my zsh setup on macos)](https://blog.larsbehrenberg.com/the-definitive-iterm2-and-oh-my-zsh-setup-on-macos)
- [Dracula theme for applications](https://draculatheme.com/)

## License

The code is available under the [MIT license](license)

<!-- Link labels: -->
[repo]: https://github.com/horia-delicoti
[license]: LICENSE.txt
[shell]: https://github.com/horia-delicoti/dotfiles/tree/master/src/shell