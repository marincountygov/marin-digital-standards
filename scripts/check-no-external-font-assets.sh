#!/usr/bin/env sh
set -eu

ROOT="${1:-.}"

if [ ! -d "$ROOT" ]; then
  echo "Path not found: $ROOT" >&2
  exit 2
fi

PATTERN='fonts\.googleapis|fonts\.gstatic|use\.typekit|p\.typekit|cdn\.jsdelivr|unpkg\.com|cdnjs\.cloudflare'
TMP="${TMPDIR:-/tmp}/marin-no-external-font-assets.$$"

# Scan runtime source files only. Markdown documentation may mention these
# hosts as prohibited examples, so docs are intentionally excluded.
grep -RInE "$PATTERN" "$ROOT" \
  --include='*.html' \
  --include='*.css' \
  --include='*.js' \
  --include='*.mjs' \
  --include='*.cjs' \
  --include='*.ts' \
  --include='*.tsx' \
  --include='*.jsx' \
  --exclude-dir='.git' \
  --exclude-dir='node_modules' \
  --exclude-dir='dist' \
  --exclude-dir='build' \
  --exclude-dir='vendor/fonts' > "$TMP" || true

if [ -s "$TMP" ]; then
  echo "External font/CDN asset references found in runtime files:" >&2
  cat "$TMP" >&2
  rm -f "$TMP"
  exit 1
fi

rm -f "$TMP"
echo "No prohibited external font/CDN asset references found in runtime files."
