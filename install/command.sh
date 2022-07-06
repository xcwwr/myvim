#!/usr/bin/env bash

function install_or_skip() {
    INSTALL_COMANND="$1"
    INSTALL_TARGET="$2"

    if ! type "$INSTALL_TARGET" >/dev/null 2>&1; then
        eval "$INSTALL_COMANND"
    else
        printf "[xc.vim] - \'%s\' already exist, skip...\n" "$INSTALL_TARGET"
    fi
}

function version_gt() {
    VERSION=$("$1" -v)
    test "$(echo "$VERSION $2" | tr " " "\n" | sort -V | head -n 1)" != "$2"
}

