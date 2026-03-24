#!/usr/bin/env bash
set -euo pipefail

URL="${1:?URL argument required}"
out="${2:?Output file argument required}"
tmp="${out}.tmp"

if wget -O "$tmp" "$URL"; then
    mv "$tmp" "$out"
    sha256sum "$out" > "${out}.sha2"
else
    rm -f "$tmp"
    printf 'WARNING: Download failed. Verifying %s integrity...\n' "$out" >&2
    sha256sum --check "${out}.sha2" \
        || { printf 'ERROR: %s is missing, empty, or hash mismatch.\n' "$out" >&2; exit 1; }
fi