#!/usr/bin/env bash
# Compress or decompress files with gzip.
#
# To ungzip (decompress):  gunzip file.gz   → leaves file (removes .gz)
# To gzip (compress):      gzip file        → leaves file.gz (removes original unless -k)
#
# Usage:
#   ./gunzip-gzip.sh gzip   <file> [file ...]   — compress file(s)
#   ./gunzip-gzip.sh gunzip <file> [file ...]   — decompress file(s)
#
# Examples:
#   ./gunzip-gzip.sh gzip myfile.txt
#   ./gunzip-gzip.sh gunzip myfile.gz

set -e

ACTION="${1:?Usage: $0 gzip|gunzip <file> [file ...]}"
shift || true

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 gzip|gunzip <file> [file ...]"
  exit 1
fi

case "$ACTION" in
  gzip)
    gzip "$@"
    ;;
  gunzip)
    gunzip "$@"
    ;;
  *)
    echo "Unknown action: $ACTION (use gzip or gunzip)"
    exit 1
    ;;
esac
