#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_utm() {

    # If necessary, prompt user to install `UTM`.

    if ! is_utm_installed; then
        open "macappstores://itunes.apple.com/en/app/utm-virtual-machines/id1538878817"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until `UTM` is installed.

    execute \
        "until is_utm_installed; do \
            sleep 5; \
         done" \
        "UTM.app"

}

is_utm_installed() {
    [ -d "/Applications/UTM.app" ]
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "   UTM Virtual Machines\n\n"

    install_utm

}

main