#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

#brew_install "ShellCheck" "shellcheck"
brew_install "Wget" "wget"
#brew_install "Terraform" "terraform"
#brew_install "Docker" "docker"
brew_install "Openvpn" "openvpn"
#brew_install "Vagrant" "vagrant"

#if [ -d "$HOME/.nvm" ]; then
#    brew_install "Yarn" "yarn"
#fi
