#!/bin/bash
set -e
bsdtar -cjf "$1".tar.bz2 "$@" && echo "bsdtar - OK" > results.txt || ! echo "bsdtar - FAILS" > results.txt
mv -f "$1".tar.bz2 /d && echo "cp - OK" >> results.txt || ! echo "cp - FAILS" >> results.txt
