#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_istat() {

    # If necessary, prompt user to install `iStat Menus`.

    if ! is_istat_installed; then
        open "macappstores://itunes.apple.com/en/app/istat-menus/id1319778037"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until `iStat Menus` is installed.

    execute \
        "until is_istat_installed; do \
            sleep 5; \
         done" \
        "iStat Menus.app"

}

is_istat_installed() {
    [ -d "/Applications/iStat Menus.app" ]
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "   iStat Menus\n\n"

    install_istat

}

main