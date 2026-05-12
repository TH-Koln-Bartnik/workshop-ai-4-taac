# KI in Tax, Audit & Advisory — Workshop-Skript

Online-Skript zu zwei Einführungsworkshops à drei Stunden für den
Schwerpunkt *KI in Tax, Audit & Advisory* an der TH Köln.

- **Workshop 1** — Dienstag, 12.05.2026, 16:00–19:00 Uhr · AI Fluency Framework
- **Workshop 2** — Mittwoch, 13.05.2026, 16:00–19:00 Uhr · Prozessmodellierung,
  Automatisierung, integrierter 4D-Use-Case

Beide Termine: Campus Südstadt, Claudiusstraße 1.

Repo: <https://github.com/TH-Koln-Bartnik/workshop-ki-4-taa>
Pages: <https://th-koln-bartnik.github.io/workshop-ki-4-taa/>

## Bauen und veröffentlichen

Lokal:

```bash
quarto preview      # Live-Vorschau auf http://localhost:4XXX
quarto render       # Einmal-Render in /docs
```

Veröffentlicht über GitHub Pages aus `/docs` (Branch `main`).
Nach jedem `quarto render` einen Commit auf `main` pushen — Pages baut die Seite
binnen ein bis zwei Minuten neu.

## Struktur

- `index.qmd` — Landing
- `parts/` — Workshop-Seiten und Übungs-Sammlungen
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
