#!/bin/bash
# https://vi.stackexchange.com/questions/388/what-are-the-differences-between-the-vim-plugin-managers
# https://vimawesome.com/plugin/syntastic
# https://github.com/junegunn/vim-plug

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugins() {

    declare -r PLUG_VIM="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install vim-plugins.

    printf "\n" | /bin/bash -c "$(curl -fsLo ~/.vim/autoload/plug.vim --create-dirs $PLUG_VIM)" &> /dev/null

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Vim\n\n"

    "./$(get_os)/vim.sh"
    install_plugins

}

main
