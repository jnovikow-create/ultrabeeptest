#!/usr/bin/env bash
# Push this folder to GitHub Pages: https://github.com/USER/ultrbeeptest
set -euo pipefail
cd "$(dirname "$0")"

USER_NAME="${1:-}"
if [[ -z "$USER_NAME" ]]; then
  echo "Usage: ./publish.sh YOUR_GITHUB_USERNAME"
  echo "Example: ./publish.sh jnovikow"
  exit 1
fi

REPO="https://github.com/${USER_NAME}/ultrbeeptest.git"
PAGES="https://${USER_NAME}.github.io/ultrbeeptest/"

if [[ ! -d .git ]]; then
  git init
  git branch -M main
fi

git add \
  index.html support.html privacy.html styles.css README.md \
  icon.png icon-512.png logo.png \
  hero-run.png hero-tests.png hero-standards.png hero-teams.png hero-export.png \
  1.png 2.png 3.png 4.png 2>/dev/null || true

# Add whatever assets exist
git add -A
git status

if git diff --cached --quiet; then
  echo "Nothing new to commit."
else
  git commit -m "Ultra Beep Test support and privacy pages for App Store"
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO"
else
  git remote add origin "$REPO"
fi

echo ""
echo "Pushing to $REPO ..."
echo "If the repo does not exist yet, create it at: https://github.com/new"
echo "  Name: ultrbeeptest  · Public  · no README needed"
echo ""
git push -u origin main

echo ""
echo "Next: GitHub → ultrbeeptest → Settings → Pages"
echo "  Source: Deploy from branch  ·  Branch: main  ·  Folder: / (root)"
echo ""
echo "App Store Connect URLs:"
echo "  Support:  ${PAGES}support.html"
echo "  Privacy:  ${PAGES}privacy.html"
echo "  Home:     ${PAGES}"
