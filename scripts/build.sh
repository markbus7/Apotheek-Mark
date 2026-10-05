#!/usr/bin/env sh
# Maakt index.html (volledig HTML-document voor GitHub Pages / lokaal openen) van app.html.
set -e
cd "$(dirname "$0")/.."
{
  printf '<!doctype html>\n<html lang="nl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
