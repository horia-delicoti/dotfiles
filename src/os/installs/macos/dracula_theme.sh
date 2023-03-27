#!/bin/bash
# Dark theme for ZSH https://draculatheme.com/zsh

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

install_dracula_theme() {

    declare -r OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"
    declare -r DRACULA_DIR="$OH_MY_ZSH_DIR/custom/plugins/dracula"
    declare -r DRACULA_GIT_REPO_URL="https://github.com/dracula/zsh.git"

    if ! is_dracula_installed; then

        # Install the theme cloning the repo
        git clone --quiet $DRACULA_GIT_REPO_URL $DRACULA_DIR 

    fi

    # Creating a symbolic link to oh-my-zsh's theme folder
    ln -fs $DRACULA_DIR/dracula.zsh-theme $OH_MY_ZSH_DIR/themes/dracula.zsh-theme
    #   |└─ create symbolic link
    #   └── if target file exists, unlink it so the link may occur (overrides)

    print_result $? "Dracula Dark Theme"

}

install_zsh_autosuggestions() {

    declare -r OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"
    declare -r ZSH_AUTOSUGGESTIONS_DIR="$OH_MY_ZSH_DIR/custom/plugins/zsh-autosuggestions"
    declare -r ZSH_AUTOSUGGESTIONS_URL="https://github.com/zsh-users/zsh-autosuggestions"

    if ! is_zsh_autosuggestions_installed; then

        # Install the zsh autosuggestions repo
        git clone --quiet $ZSH_AUTOSUGGESTIONS_URL $ZSH_AUTOSUGGESTIONS_DIR

    fi

    print_result $? "ZSH Autosuggestions Plugin"

}

is_dracula_installed() {
    [ -d "$DRACULA_DIR" ]
}

is_zsh_autosuggestions_installed() {
    [ -d "$ZSH_AUTOSUGGESTIONS_DIR" ]
}