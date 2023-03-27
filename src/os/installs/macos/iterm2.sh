#!/bin/bash
# https://chamikakasun.medium.com/iterm2-zsh-oh-my-zsh-the-most-power-full-terminal-on-macos-2021-guide-macos-big-sur-5bb498976dc9

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh" \
    && . "./dracula_theme.sh"

install_ohmyzsh() {

    if ! is_ohmyzsh_installed; then
        printf "\n" | /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &> /dev/null
        #  └─ simulate the ENTER keypress
    fi

    print_result $? "Oh My Zsh"

}

is_ohmyzsh_installed() {
    [ -d "$HOME/.oh-my-zsh" ]
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   iterm2\n\n"

    brew_install "iterm2" "iterm2" "--cask"
    brew_install "zsh" "zsh"

    install_ohmyzsh
    install_dracula_theme

}

main