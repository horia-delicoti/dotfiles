#!/bin/bash

print_in_color() {
    # printf - has more control over the formatting of the output
    printf "%b" "$(tput setaf "$2" 2> /dev/null)" "$1" "$(tput sgr0 2> /dev/null)"
        #           |    └─ Set foreground color: 1: Red, 2: Green, 3: Yellow, 4: Blue, 5: Magenta
        #           └─ Command used to manipulate terminal, change color of text, apply effects
}

print_in_green() {
    print_in_color "$1" 2
}

print_in_purple() {
    print_in_color "$1" 5
}

print_in_red() {
    print_in_color "$1" 1
}

print_in_yellow() {
    print_in_color "$1" 3
}

print_in_green "test"