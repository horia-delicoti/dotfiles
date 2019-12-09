#!/bin/bash

# "declare" - typing variable; permits modifying the properties of variables
# "-r" - readonly; this is a rough equivalent of the C "const" type
declare -r GITHUB_REPOSITORY="horia-delicoti/dotfiles"
declare -r DOTFILES_TARBALL_URL="https://github.com/$GITHUB_REPOSITORY/tarball/master"

download() {

    # local variable is visible only within the block of code
    local url="$1"
    local output"$2"

    # &> /dev/null - writing the output to /dev/null
    # -------------------------------------------------
    # File              C IDENTIFIER    FILE DESCRIPTOR
    # Standard Input    stdin           0
    # Standard Output   stdout          1
    # Standard Error    stderr          2
    # -------------------------------------------------
    wget -qO "$output" "$url" $> /dev/null
    #     |└─ write output to file
    #     └─ "quite" - don't show wget's output

    return 1
}

download_utils() {

    # local variables is visible only within the block of code
    local tmpFile=""

    # mktemp - creates  a  temporary  file  or  directory
    tmpFile="$(mktemp /tmp/XXXXX)"

    download $DOTFILES_TARBALL_URL $tmpFile
    
    return 1
}

# -----------------------------------------------
# | Main                                        |
# -----------------------------------------------

main() {
    echo $DOTFILES_TARBALL_URL

    # Load utils
    download_utils
}

main
