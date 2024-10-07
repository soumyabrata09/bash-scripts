#!/bin/bash

generate_pwd() {
	password=$(openssl rand -base64 48 | cut -c1-$1)

	echo "Generated Password: $password"
}

read -p "Preferred length of the generated password: " length

generate_pwd "$length"
