#!/bin/bash
# Dark theme for ZSH https://draculatheme.com

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

declare -r OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"

install_zsh_dracula_theme() {

    declare -r ZSH_DRACULA_DIR="$OH_MY_ZSH_DIR/custom/plugins/dracula"
    declare -r ZSH_DRACULA_GIT_REPO_URL="https://github.com/dracula/zsh.git"

    if ! is_dracula_installed; then

        # Install the theme cloning the repo
        git clone --quiet $ZSH_DRACULA_GIT_REPO_URL $ZSH_DRACULA_DIR 

    fi

    # Creating a symbolic link to oh-my-zsh's theme folder
    ln -fs $ZSH_DRACULA_DIR/dracula.zsh-theme $OH_MY_ZSH_DIR/themes/dracula.zsh-theme
    #   |└─ create symbolic link
    #   └── if target file exists, unlink it so the link may occur (overrides)

    print_result $? "Dracula Dark Theme"

}

install_zsh_autosuggestions() {

    declare -r ZSH_AUTOSUGGESTIONS_DIR="$OH_MY_ZSH_DIR/custom/plugins/zsh-autosuggestions"
    declare -r ZSH_AUTOSUGGESTIONS_URL="https://github.com/zsh-users/zsh-autosuggestions"

    if ! is_zsh_autosuggestions_installed; then

        # Install the zsh autosuggestions repo
        git clone --quiet $ZSH_AUTOSUGGESTIONS_URL $ZSH_AUTOSUGGESTIONS_DIR

    fi

    print_result $? "ZSH Autosuggestions Plugin"

}

install_iterm_dracula_theme() {

    declare -r ITERM_DRACULA_THEME_DIR="$OH_MY_ZSH_DIR/custom/iterm_dracula_theme"
    declare -r ITERM_DRACULA_THEME_URL="https://github.com/dracula/iterm.git"

    if ! is_iterm_dracula_theme_installed; then

        # Install the zsh autosuggestions repo
        git clone --quiet $ITERM_DRACULA_THEME_URL $ITERM_DRACULA_THEME_DIR

    fi

    print_result $? "iTerm2 Dracula Theme"

}

is_iterm_dracula_theme_installed() {
    [ -d "$ITERM_DRACULA_THEME_DIR "]
}

is_dracula_installed() {
    [ -d "$ZSH_DRACULA_DIR" ]
}

is_zsh_autosuggestions_installed() {
    [ -d "$ZSH_AUTOSUGGESTIONS_DIR" ]
}