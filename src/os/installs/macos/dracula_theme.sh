#!/bin/bash
# Dark theme for ZSH https://draculatheme.com/zsh

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

install_dracula_theme() {

    declare -r OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"
    declare -r DRACULA_DIR="$OH_MY_ZSH_DIR/custom/dracula"
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

is_dracula_installed() {
    [ -d "$DRACULA_DIR" ]
}