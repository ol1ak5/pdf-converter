#!/bin/bash
# Installs the "md2pdf" Finder Quick Action (right-click → Quick Actions).
# The Quick Action runs ~/ai-projects/pdf-converter/md2pdf.sh, so the repo
# must be cloned to that path.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p ~/Library/Services
rm -rf ~/Library/Services/md2pdf.workflow
cp -R "$DIR/quick-action/md2pdf.workflow" ~/Library/Services/
echo "Installed ~/Library/Services/md2pdf.workflow"
