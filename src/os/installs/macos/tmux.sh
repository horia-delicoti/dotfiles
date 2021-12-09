#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   tmux\n\n"

# https://linuxize.com/post/getting-started-with-tmux/
brew_install "tmux" "tmux"
#brew_install "tmux (pasteboard)" "reattach-to-user-namespace"
