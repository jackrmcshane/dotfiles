#!/bin/sh


if [ -f /etc/debian_version ]; then
    echo '[*] Entering Debian installer...'
    ./scripts/debian/debian_install.sh
elif [ -f /etc/arch-release ]; then
    echo '[*] Entering Arch installer...'
    ./scripts/arch/arch_install.sh
fi
