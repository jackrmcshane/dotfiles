#!/bin/sh


if [ -f /etc/debian_version ]; then
    echo '[*] Entering Debian installer...'
    ./scripts/debian_install.sh
elif [ -f /etc/arch-release ]; then
    echo '[*] Entering Arch installer...'
    ./scripts/arch_install.sh
fi
