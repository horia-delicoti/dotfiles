#!/bin/bash

# "declare" - typing variable; permits modifying the properties of variables
# "-r" - readonly; this is a rough equivalent of the C "const" type
declare -r GITHUB_REPOSITORY="horia-delicoti/dotfiles"
declare -r DOTFILES_TARBALL_URL="https://github.com/$GITHUB_REPOSITORY/tarball/master"


download_utils() {

    local tmpFile=""

    # mktemp - creates  a  temporary  file  or  directory
    tmpFile="$(mktemp /tmp/XXXXX)"
    
    echo $tmpFile

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
