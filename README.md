# KI in Tax, Audit & Advisory — Workshop-Skript

Online-Skript zu zwei Einführungsworkshops à drei Stunden für den
Schwerpunkt *KI in Tax, Audit & Advisory* an der TH Köln.

- **Workshop 1** — Donnerstag, 24.09.2026, 09:00–13:00 Uhr · AI Fluency Framework
- **Workshop 2** — Freitag, 25.09.2026, 09:00–13:00 Uhr · Discern in vier Ebenen,
  Diligence; Recaps zu Delegate (Mermaid) und Describe (Prompt-Patterns)

Beide Termine: Campus Südstadt, Claudiusstraße 1.

Repo: <https://github.com/TH-Koln-Bartnik/workshop-ai-4-taac>
Pages: <https://th-koln-bartnik.github.io/workshop-ai-4-taac/>

## Bauen und veröffentlichen

Lokal:

```bash
quarto preview      # Live-Vorschau auf http://localhost:4XXX
quarto render       # Einmal-Render in /docs
```

Veröffentlicht über GitHub Pages aus `/docs` (Branch `main`).
Nach jedem `quarto render` einen Commit auf `main` pushen — Pages baut die Seite
binnen ein bis zwei Minuten neu.

Unverlinkte Test-Entwürfe (z. B. die fachlich vertiefte Übungsfassung für die
Gegenprüfung durch Wirtschaftsprüfer) liegen in `drafts/` und sind bewusst nicht
in `_quarto.yml` gelistet — sie erscheinen weder in Seitenleiste, Suche noch
Vor/Zurück-Navigation. Sie werden einzeln über das Profil `single`
(`_quarto-single.yml`, `project.type: default`) gerendert:

```bash
quarto render drafts/untested-draft-ws2-uebungen-fachlich-vertieft.qmd --profile single --to html
```

Ergebnis: `docs/drafts/untested-draft-ws2-uebungen-fachlich-vertieft.html`, nach dem
Push erreichbar unter
<https://th-koln-bartnik.github.io/workshop-ai-4-taac/drafts/untested-draft-ws2-uebungen-fachlich-vertieft.html>.
Der normale Buch-Render lässt `docs/drafts/` unangetastet.

## Struktur

- `index.qmd` — Landing
- `parts/` — Workshop-Seiten und Übungs-Sammlungen
- `drafts/` — unverlinkte Test-Entwürfe (Render nur per `--profile single`)
- `appendix/` — Quickstart, Troubleshooting, Tutor-Prompt
- `interactions/` — eigenständige HTML-Widgets (Drag-and-Drop, Quiz, AAA-Mapper)
- `images/` — Logos, Banner, Grafiken
- `data/` — CSV/JSON für Charts und Beispiele
- `code/` — R-/Python-Skripte für reproduzierbare Outputs
- `handouts/` — druckbare PDFs
- `docs/` — Render-Output, von Pages geserved (mit `.nojekyll`)
- `styles.scss` — TH-Köln-Brand
- `references.bib` — Zotero-Export, APA-CSL

Wichtige `_quarto.yml`-Konvention: `project.resources` listet alle
Nicht-`.qmd`-Ordner explizit, damit sie beim Render nach `docs/` mitkopiert
werden. Sonst sind Widget- und Bilderlinks auf der Pages-Seite tot.

## Lizenz

Inhalte CC BY-NC-SA 4.0 (siehe `LICENSE`).
