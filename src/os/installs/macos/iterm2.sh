#!/bin/bash
# https://chamikakasun.medium.com/iterm2-zsh-oh-my-zsh-the-most-power-full-terminal-on-macos-2021-guide-macos-big-sur-5bb498976dc9

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

install_ohmyzsh() {

    printf "\n" | /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &> /dev/null
    #  └─ simulate the ENTER keypress

    print_result $? "ohmyzsh"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   iterm2\n\n"
    brew_install "iterm2" "iterm2" "--cask"

    print_in_purple "\n   zsh\n\n"
    brew_install "zsh" "zsh"

    print_in_purple "\n   ohmyzsh\n\n"
    install_ohmyzsh

}

main