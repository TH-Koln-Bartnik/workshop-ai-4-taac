#!/usr/bin/env bash
# push-to-github.sh
# Bash-Variante (Git Bash / WSL / macOS / Linux).
# Aufruf:  bash push-to-github.sh

set -euo pipefail

REPO_URL="https://github.com/TH-Koln-Bartnik/workshop-ki-4-taa.git"
PROJ_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "==> Projektordner: $PROJ_DIR"
cd "$PROJ_DIR"

# 1) Verwaisten Sub-Klon entfernen, falls vorhanden
if [ -d "workshop-ki-4-taa" ]; then
  echo "==> Entferne verwaisten Sub-Klon workshop-ki-4-taa/ ..."
  rm -rf "workshop-ki-4-taa"
fi

# 2) Git-Repo initialisieren (idempotent)
if [ ! -d ".git" ]; then
  echo "==> git init"
  git init >/dev/null
  git branch -M main
fi

# 3) Remote setzen / aktualisieren
if git remote | grep -qx "origin"; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi
echo "==> Remote origin = $REPO_URL"

# 4) .nojekyll sicherstellen
mkdir -p docs
[ -f docs/.nojekyll ] || touch docs/.nojekyll

# 5) Commit
git add -A
if ! git diff --cached --quiet; then
  read -r -p "Commit-Nachricht (Enter fuer Default): " MSG
  [ -z "$MSG" ] && MSG="Setup: Lakens-Struktur, AAA-Mapper-Integration, .nojekyll, resources"
  git commit -m "$MSG"
else
  echo "==> Nichts zu committen."
fi

# 6) Pull mit unrelated histories
echo "==> Pull (allow-unrelated-histories) ..."
git pull origin main --allow-unrelated-histories --no-edit

# 7) Push
echo "==> Push ..."
git push -u origin main

cat <<EOF

Fertig. Auf GitHub unter Settings -> Pages pruefen:
  Source: Deploy from a branch
  Branch: main, Folder: /docs

Pages-URL nach 1 - 2 Minuten:
  https://th-koln-bartnik.github.io/workshop-ki-4-taa/
EOF
