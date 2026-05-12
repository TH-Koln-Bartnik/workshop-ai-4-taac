#!/usr/bin/env bash
# tools/setup-latex.sh
#
# Pre-render hook: stellt sicher, dass die deutschen LaTeX-Pakete fuer
# den PDF-Bau installiert sind. Wird automatisch von Quarto aufgerufen,
# wenn in _quarto.yml unter project.pre-render: dieses Skript steht.
#
# Idempotent: Bei vollstaendiger Installation passiert nichts und der
# Render laeuft sofort weiter. Bei fehlenden Paketen werden genau die
# fehlenden via tlmgr nachgezogen.
#
# Voraussetzungen: Bash (Git Bash auf Windows reicht) und TinyTeX
# (Quarto: `quarto install tinytex`).

set -uo pipefail

# 1) tlmgr finden — TinyTeX-Standardpfade fuer Windows / macOS / Linux
TLMGR=""
for cand in \
  "$HOME/AppData/Roaming/TinyTeX/bin/windows/tlmgr.bat" \
  "$HOME/AppData/Roaming/TinyTeX/bin/win32/tlmgr.bat" \
  "$HOME/Library/TinyTeX/bin/universal-darwin/tlmgr" \
  "$HOME/.TinyTeX/bin/x86_64-linux/tlmgr"; do
  if [ -e "$cand" ]; then TLMGR="$cand"; break; fi
done

if [ -z "$TLMGR" ]; then
  echo "[setup-latex] tlmgr nicht gefunden. Fuer PDF-Render ggf.:" >&2
  echo "[setup-latex]   quarto install tinytex" >&2
  exit 0   # HTML-Render funktioniert auch ohne tlmgr — nicht hart abbrechen
fi

# kpsewhich liegt im selben Verzeichnis wie tlmgr
KPSE_DIR="$(dirname "$TLMGR")"
KPSE="$KPSE_DIR/kpsewhich"
[ -e "${KPSE}.exe" ] && KPSE="${KPSE}.exe"

# 2) Pakete und Kennfiles. Format: paket:kennfile
#    Wird Kennfile per kpsewhich nicht gefunden, wird das Paket nachinstalliert.
PKGS_FILES=(
  "babel-german:ngerman.ldf"
  "hyphen-german:dehyph.tex"
  "csquotes:csquotes.sty"
)

MISSING=()
for entry in "${PKGS_FILES[@]}"; do
  pkg="${entry%%:*}"
  file="${entry##*:}"
  if ! "$KPSE" "$file" >/dev/null 2>&1; then
    MISSING+=("$pkg")
  fi
done

if [ ${#MISSING[@]} -eq 0 ]; then
  exit 0
fi

echo "[setup-latex] Installiere fehlende LaTeX-Pakete: ${MISSING[*]}"
"$TLMGR" install "${MISSING[@]}" || {
  echo "[setup-latex] tlmgr install ist fehlgeschlagen." >&2
  echo "[setup-latex] Manuell: $TLMGR install ${MISSING[*]}" >&2
  exit 1
}
echo "[setup-latex] Fertig."
