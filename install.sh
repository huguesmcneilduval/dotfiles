#!/usr/bin/env bash

sh -c "$(curl -fsLS get.chezmoi.io)"

read -p "What is your github account ? ($(whoami))" username

[ -z "$username" ] && echo "Missing github account" && exit 1

chezmoi init --verbose --apply "$username"


