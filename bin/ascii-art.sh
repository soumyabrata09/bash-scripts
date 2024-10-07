#!/bin/bash

generate_ascii_art() {

#Install figlet and lolcat if not already installed
brew install figlet lolcat

#Display ASCII art
figlet $1 | lolcat
}

#Install figlet and lolcat if not already installed
brew install figlet lolcat

read -p "Enter a String value: " val

generate_ascii_art "$val"


