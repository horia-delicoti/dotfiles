#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_magnet() {

    # If necessary, prompt user to install `Magnet`.

    if ! is_magnet_installed; then
        open "macappstores://itunes.apple.com/en/app/magnet/id441258766"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until `Magnet` is installed.

    execute \
        "until is_magnet_installed; do \
            sleep 5; \
         done" \
        "Magnet"

}

is_magnet_installed() {
    [ -d "/Applications/Magnet.app" ]
}