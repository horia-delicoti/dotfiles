#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_whatsapp() {

    # If necessary, prompt user to install `Whatsapp`.

    if ! is_whatsapp_installed; then
        open "macappstores://itunes.apple.com/en/app/whatsapp-desktop/id1147396723"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until `Whatsapp` is installed.

    execute \
        "until is_whatsapp_installed; do \
            sleep 5; \
         done" \
        "WhatsApp"

}

is_whatsapp_installed() {
    [ -d "/Applications/WhatsApp.app" ]
}