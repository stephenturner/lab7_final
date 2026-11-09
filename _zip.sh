#!/usr/bin/env bash
set -e
set -u
set -o pipefail

ZIPFILE="../$(basename $(pwd)).zip"
rm -f $ZIPFILE
zip -r $ZIPFILE . -x "*.html" ".git/*" ".Rproj.user/*" ".quarto/*" "*.DS_Store" -x "_zip.sh"