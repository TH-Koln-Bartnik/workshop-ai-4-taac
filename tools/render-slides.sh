#!/usr/bin/env bash
# Rendert alle RevealJS-Slideshows im slides/-Ordner.
# Wird als pre-render-Hook im _quarto.yml aufgerufen.
# Jede slides/*.qmd wird einzeln gerendert; das produziert slides/*.html,
# das anschließend über resources: slides/** ins docs/-Verzeichnis kopiert wird.

set -euo pipefail

shopt -s nullglob

cd "$(dirname "$0")/.."

slides=(slides/*.qmd)

if [ ${#slides[@]} -eq 0 ]; then
  echo "Keine Slideshows in slides/ gefunden — nichts zu tun."
  exit 0
fi

echo "==> Rendere ${#slides[@]} Slideshow(s) ..."
for f in "${slides[@]}"; do
  echo "  - $f"
  quarto render "$f"
done
echo "==> Slideshows fertig."
