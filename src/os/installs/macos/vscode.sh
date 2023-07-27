#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 (plugin)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"                                :

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Install the VSCode plugins
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "File Icons" "vscode-icons-team.vscode-icons"
install_plugin "MarkdownLint" "DavidAnson.vscode-markdownlint"
install_plugin "Vim" "vscodevim.vim"
install_plugin "Terraform" "hashicorp.terraform"
install_plugin "Ansible" "redhat.ansible"
install_plugin "Jinja" "wholroyd.jinja"
install_plugin "Toml" "tamasfe.even-better-toml"
install_plugin "GitLens" "eamodio.gitlens"
install_plugin "Dracula Official" "dracula-theme.theme-dracula"
install_plugin "Language support for Vue 3" "vue.volar"
install_plugin "Remote-SSH" "ms-vscode-remote.remote-ssh"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'
