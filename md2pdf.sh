#!/bin/bash
# Homebrew lives in /opt/homebrew on Apple Silicon, /usr/local on Intel
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
DIR="$(cd "$(dirname "$0")" && pwd)"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
mkdir -p "$DIR/build"
for f in "$@"; do
  case "$f" in
    *.md) ;;
    *) echo "skipping (not markdown): $f" ; continue ;;
  esac

  out="${f%.md}.pdf"
  pandoc -s "$f" -o "$DIR/build/build.html" \
    --css=../style/cv.css --metadata pagetitle="CV"  || { echo "FAILED: $f"; continue; }

  sed -i '' 's|<body>|<body class="cv-document">|' "$DIR/build/build.html"

  "$CHROME" --headless --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$out" "$DIR/build/build.html" 2>/dev/null

  echo "OK: $out"
  open -R "$out"
done