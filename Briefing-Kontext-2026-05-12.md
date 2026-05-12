# Kontext-Briefing: Workshop „KI in Tax, Audit & Advisory"

Stand: 12.05.2026 · Prof. Dr. Roman Bartnik · TH Köln, Fakultät für Informatik und Ingenieurwissenschaften

## 1. Projekt in einem Absatz

Zwei Einführungsworkshops à 3 Stunden für den Schwerpunkt „KI in Tax, Audit & Advisory" (TAAC) an der TH Köln. Workshop 1 am Dienstag 12.05.2026, 16:00–19:00, und Workshop 2 am Folgetag Mittwoch 13.05.2026. Zielgruppe: Studierende ohne tiefe IT-Vorbildung. Output: ein Quarto-Book als Skript plus sechs RevealJS-Slideshows, deployed auf GitHub Pages, lizenziert CC BY-NC-SA 4.0. Sprache durchgehend Deutsch, englische Fachbegriffe (LLM, Harness, Prompt) bei erster Nennung kurz erklärt.

## 2. Pfade

- **Lokales Repo:** `C:\Users\roman\My Tresors\0_Roman Arbeit\0_GenAI\2-Teach\32-Workshop-KI-Tax-Audit-2026-05-12\`
- **Cowork-Mount (Bash):** `/sessions/.../mnt/0_GenAI/2-Teach/32-Workshop-KI-Tax-Audit-2026-05-12/`
- **GitHub-Repo (laut `_quarto.yml`):** `https://github.com/TH-Koln-Bartnik/workshop-ki-4-taa`
- **Live-URL (GitHub Pages):** `https://th-koln-bartnik.github.io/workshop-ai-4-taac/` — Achtung, Repo-Name in `_quarto.yml` (`workshop-ki-4-taa`) und Pages-URL (`workshop-ai-4-taac`) divergieren, bitte vor dem nächsten Push klären.

## 3. Konventionen — bitte durchziehen

- **Anrede Sie**, durchgängig in allen Skript-Dateien und Slideshows. Frühere Du-Drift wurde behoben.
- **Deutsche Anführungszeichen** „…" (U+201E + U+201C). Vorsicht bei JavaScript-Strings: ASCII-`"` innerhalb eines `"..."`-Literals brechen den String — entweder typografische Anführungszeichen oder `\"`-Escape nutzen.
- **Übung** ist der Sammelbegriff (nicht „Aufgabe", nicht „Mini-Aktivierung").
- **Process Automation** und **Cognitive Automation** bleiben als englische Termini stehen, ohne Anglizismus-Wechsel.
- **TH-Köln-Brand** liegt in `styles.scss`: TH Red #c81e0f, TH Magenta #b43092, TH Orange #ea5a00, Arial, kantig (`border-radius: 0`). Color-Bar als Komponente `.th-color-bar`.

## 4. Aktueller Inhaltsstand

### Workshop 1 — AI Fluency Framework (180 Min)

Fünf Input-Blöcke plus Begrüßung/Abschluss, jeder Input mit eingebetteter 15-Min-Übung plus Think-Pair-Share. Ablauf:

1. Block 0 — Begrüßung und Kalibrierung (5 Min)
2. Block 1 — Process vs. Cognitive Automation (10 Min) → Übung 1 Diagnose-Quiz
3. Block 2 — 4D-Framework Kurzdurchlauf (7 Min)
4. Block 3 — Delegate: Modell, Harness, agentische Nutzung (12 Min) → Übung 2 Karriereentwicklung im Modellvergleich
5. Pause (10 Min)
6. Block 4 — Describe: RTF und CREATE (12 Min) → Übung 3 Prompt-Umbau und Tutor-Bot
7. Block 5 — Discern: Outputs systematisch prüfen mit RAGAS und Red-Green-TDD (12 Min) → Übung 4 Tutor-Bot Test-Suite
8. Block 6 — Abschluss: Diagnose-Quiz Re-Test und Brücke zu Tag 2 (9 Min)

Hausaufgabe nach W1: Accounts anlegen bei Signavio Academic (<https://academic.signavio.com/p/explorer>) und UiPath Cloud (<https://cloud.uipath.com/>).

### Workshop 2 — Prozessmodellierung, Automatisierung, 4D-Use-Case (180 Min)

Discernment ist in W1 vollständig behandelt, deshalb steht Workshop 2 auf **Diligence** (statt früher geplant Discernment-Vertiefung). Ablauf:

- Block 0 Recap (5 Min) · Block I BPMN/Signavio (22 Min) · Block J UiPath (15 Min) · Block K Diligence vertieft mit WPO § 43, StBerG § 57, DSGVO Art. 5, EU AI Act Art. 50 (16 Min) · Block L Use-Case-Setup (2 Min).
- In-Class-Übungen (120 Min): BPMN-Modellierung Rechnungseingang (40), UiPath-Bot lesen und anpassen (40), integrierter 4D-Use-Case mit Diligence-Schwerpunkt (40, fiktiver Sachverhalt: deutsche IT-Beratung erbringt Cloud-Migrations-Beratung für US-Kunden in Boston).
- Hausaufgaben nach W2: Dilemma der Mitte (Positionspapier 500–800 Wörter) und Personal AI Policy (Capstone).

### Übungs-Allokation aus dem Handout

| Übung | Workshop | Modus | Dauer |
|---|---|---|---|
| 1 Diagnose-Quiz Process vs. Cognitive | W1 | In-class | 18 Min |
| 2 Karriereentwicklung im Modellvergleich | W1 | In-class | 22 Min |
| 3 Prompt-Umbau und Tutor-Bot | W1 | In-class | 22 Min |
| 4 Tutor-Bot systematisch prüfen | W1 | In-class | 22 Min |
| BPMN-Modellierung Rechnungseingang | W2 | In-class | 40 Min |
| UiPath-Bot lesen und anpassen | W2 | In-class | 40 Min |
| Integrierter 4D-Use-Case | W2 | In-class | 40 Min |
| Dilemma der Mitte | nach W2 | Hausaufgabe | — |
| Personal AI Policy | nach W2 | Capstone-Hausaufgabe | — |

## 5. Repository-Struktur

```
32-Workshop-KI-Tax-Audit-2026-05-12/
├── _quarto.yml                 (Quarto-Book-Konfiguration, pre-render-Hook für Slides)
├── styles.scss                 (TH-Köln-Brand-Theme)
├── references.bib              (12 BibTeX-Einträge)
├── index.qmd                   (Startseite, schlank gehalten)
├── parts/
│   ├── 01-workshop01.qmd       (Workshop 1)
│   ├── 02-uebungen-w1.qmd      (vier W1-Übungen)
│   ├── 03-workshop02.qmd       (Workshop 2 mit Diligence)
│   ├── 04-uebungen-w2.qmd      (drei W2-Übungen)
│   ├── 05-hausaufgaben.qmd     (Dilemma + AI Policy)
│   └── 06-wissensbasis.qmd     (LLM-Grundlagen, Modell-Vergleich, Berufsrecht)
├── slides/                     (sechs RevealJS-Slideshows)
│   ├── intro-vorstellung.qmd
│   ├── 01-process-vs-cognitive.qmd
│   ├── 02-4d-framework.qmd
│   ├── 03-delegate.qmd
│   ├── 04-describe.qmd
│   └── 05-discern.qmd
├── interactions/
│   ├── diagnose-quiz.html      (10 Items, drei Antwortoptionen, Pre/Post-Vergleich)
│   └── onet-aaa-mapper.html    (29 O*NET-Tätigkeiten, Automation/Augmentation/Agency)
├── appendix/
│   ├── quickstart.qmd
│   ├── troubleshooting.qmd
│   └── tutor-prompt.qmd        (Master-Prompt für den Custom GPT)
├── literature/                 (10 PDFs der Hauptquellen plus README)
├── data/
│   └── diagnose-quiz-items.md  (zehn Items mit Begründung)
├── images/                     (~30 PNGs, Quellgrafiken und Visualisierungen)
├── handouts/                   (Originalmaterialien, u. a. AI-Fluency-PDFs)
├── tools/
│   ├── render-slides.sh        (Pre-Render-Hook für Slides)
│   └── setup-latex.sh
└── docs/                       (Build-Output, .gitignore-konform)
```

## 6. URLs

- **Live-Site:** <https://th-koln-bartnik.github.io/workshop-ai-4-taac/>
- **KI-Tutor (Custom GPT):** <https://chatgpt.com/g/g-6a03076b4da88191b9e9ae9580a0c2ce-ki-tutor-fur-workshop-auditing-tax-advisory>
- **Diagnose-Quiz live:** <https://th-koln-bartnik.github.io/workshop-ai-4-taac/interactions/diagnose-quiz.html>
- **AAA-Mapper live:** <https://th-koln-bartnik.github.io/workshop-ai-4-taac/interactions/onet-aaa-mapper.html>
- **Signavio Academic:** <https://academic.signavio.com/p/explorer>
- **UiPath Cloud:** <https://cloud.uipath.com/>
- **GWDG Academic Cloud:** <https://academiccloud.de/>
- **arena.ai Side-by-Side:** <https://arena.ai>
- **O*NET 13-2011.00 Accountants and Auditors:** <https://www.onetonline.org/link/summary/13-2011.00>

## 7. Modelle, die in den Übungen genannt werden

- **Llama 3.1 8B Instruct** auf GWDG Academic Cloud (schwächeres Modell für Übung 2 Schritt a)
- **grok-4.20-multi-agent** auf arena.ai (starkes Modell mit Search)
- **gpt-5.2-search** auf arena.ai (starkes Modell mit Search)
- **Claude, ChatGPT, Gemini, Perplexity** je nach Verfügbarkeit (Free-Tier oder Pro)
- **NotebookLM** für RAG-Tutor-Erweiterung in Übung 3 Schritt c

Bitte vor dem Workshop-Termin verifizieren, ob die exakten arena.ai-Modellnamen noch verfügbar sind.

## 8. Build-Workflow

```bash
quarto render
```

ruft im pre-render-Schritt `bash tools/render-slides.sh` auf, das alle `slides/*.qmd` rendert. Anschließend rendert Quarto das Buch nach `docs/`. Die `slides/**` sind in `_quarto.yml` als Resource registriert, die HTMLs landen damit in `docs/slides/`. Danach `git push` auf `main` deployt via GitHub Action nach Pages.

Wichtig: das Pre-Render-Hook braucht `bash` im `PATH`. Auf Windows funktioniert das aus Git Bash (MINGW64). Falls nicht verfügbar: manuell `for f in slides/*.qmd; do quarto render "$f"; done`.

## 9. Bekannte Eigenheiten und Fixes

- **Diagnose-Quiz:** Bug behoben, bei dem in Item 7 ASCII-`"` den JavaScript-String terminierten. Jetzt mit `\"`-Escape. Falls weitere Items mit Anführungszeichen erweitert werden: typografische `"` (U+201C) oder `\"` nutzen, nie ASCII-`"` innerhalb des String-Literals.
- **Workshop 2 — Discernment war früher dort vertieft, jetzt in W1 verschoben.** Workshop 2 vertieft jetzt Diligence. Beim Lesen alter Plan-Versionen Vorsicht.
- **Repo-Name-Diskrepanz:** `_quarto.yml` zeigt auf `workshop-ki-4-taa`, Live-URL nutzt `workshop-ai-4-taac`. Vor nächstem Push klären.
- **PLATZHALTER-TUTOR-URL** wurde überall durch die echte Custom-GPT-URL ersetzt.
- **Bild-Duplikate** in `images/` wurden gelöscht (`intro-motivation.png`, `intro-phasen.png`, `intro-vorstellungsrunde.png`, `intro-workflow.png`) — die `intro-slides-0X-*.png`-Varianten sind die kanonischen.

## 10. Wichtige Quellen mit BibTeX-Keys

| Key | Quelle | Wofür |
|---|---|---|
| `lacity2021becoming` | Lacity & Willcocks (2021), MISQE | Process-vs-Cognitive-Automation-Continuum |
| `willcocks2024evolution` | Willcocks & Lacity (2024), Springer-Buchkapitel | Stand 2024 zur Service Automation |
| `lacity2016new` | Lacity & Willcocks (2016), MIT Sloan | Klassiker Service Automation |
| `dakan2025framework` | Dakan & Feller (2025) | AI Fluency Framework, Originalmaterial |
| `dellacqua2023navigating` | Dell'Acqua, Mollick et al. (2023), HBS WP | Jagged Frontier |
| `mollick2024cointelligence` | Mollick (2024), Buch | Co-Intelligence, Centaur, Nachhilfeschüler-Analogie |
| `es2024ragas` | Es et al. (2024), EACL Demo | RAGAS-Metriken |
| `willison2025redgreen` | Willison (2025), Blog | Red-Green-TDD für Agenten |
| `bartnik2026genai4teaching` | eigenes Online-Buch | Describe-Kapitel als Anker |
| `omg2014bpmn` | OMG (2014) | BPMN 2.0.2 Standard |
| `grootendorst2025visual` | Grootendorst (2025), Blog | Visual Guide to LLM Agents |
| `bekes2026ai` | Békés (2026), Online-Course | Strukturvorbild für Skript |
| `pmi2024talking` | PMI (2024) | Prompt-Muster-Sammlung |
| `coombs2020strategic` | Coombs et al. (2020), JSIS | Intelligent Automation Review |
| `davenport2018artificial` | Davenport & Ronanki (2018), HBR | Praktische KI-Einsatzfelder |
| `biggs2003teaching` | Biggs (2003), Buch | Constructive Alignment |

PDFs der ersten zehn Quellen liegen in `literature/` plus `README.md` mit Lizenzhinweisen. Mollick-Buch, Biggs, Coombs, Davenport-HBR sind hinter Paywall, deshalb nicht im Ordner — Beschaffungshinweise in der README.

## 11. Bild-Sammlung (Auszug)

In `images/` liegen die zentralen Visualisierungen, die im Skript und in den Slideshows referenziert werden:

- `automation-continuum-process-automation-cognitive-automation-lacity-willcocks-2021.png` — Continuum-Grafik
- `automation-struggles-are-not-new-...png` — Automatisierungs-Generationen
- `digitalization-to-genai-timeline-not-so-new.png` — Timeline
- `genai-tech-stack-data-quality-integration-process-intelligence-willcocks-lacity-2024.png` — Tech-Stack
- `llm-augmented-visualization.png` — LLM-Kern plus Harness
- `tool-metaphor-genai.png` — Tool-Metapher
- `jagged-frontier-genai.png` — Jagged Frontier
- `centaur-genai.png` und `cyborg-genai.png` — Mensch-KI-Symbiosen
- `rag-hope-genai-bookshelf.png` — RAG-Bücherregal-Metapher
- `intro-slides-01-intro-round.png` bis `intro-slides-04-ai-support-and-iteration.png` — Workshop-Ablauf-Visualisierungen für die Slideshow
- `skills-i-know-kung-fu.png` und `skills-example-financial.png` — Skill-Symbolbilder
- `teaching-new-genai-processes.png` — didaktische Ansicht
- `fear-genai-effects.png` — Sorgen-Bild für die Dilemma-Hausaufgabe

## 12. Offene Punkte

- **Repo-Name-Diskrepanz** zwischen `_quarto.yml` (`workshop-ki-4-taa`) und Live-Pages-URL (`workshop-ai-4-taac`) — klären, eventuell den `repo-url`-Eintrag im `_quarto.yml` korrigieren.
- **Bewertungsmodell** der Workshop-Reihe (Modulnote, Studienleistung, freiwillig) noch nicht festgelegt.
- **Banner-Bilder** für die Workshops fehlen optional — derzeit reichen die Symbolgrafiken.
- **Quarto-Render-Pre-Hook** auf Windows nur in Git Bash getestet — robustes Verhalten in PowerShell oder GitHub Actions bei Bedarf prüfen.

## 13. Letzte Iterationen — Was zuletzt passiert ist

In dieser Sitzung wurde:

1. Workshop 1 komplett neu strukturiert auf fünf Input-Blöcke plus vier eingebettete 15-Min-Übungen plus TPS.
2. Diagnose-Quiz-Widget gebaut, später Bug in Item 7 mit ASCII-Anführungszeichen behoben.
3. Workshop 2 von Discernment-Vertiefung auf Diligence-Vertiefung umgestellt.
4. Intro-Slideshow plus fünf Input-Slideshows angelegt nach Vorbild aus `31-Workshop-Interaktive-Skripte-2026-05-11`.
5. Pre-Render-Hook für Slides eingerichtet, weil Quarto-Books `project.render` nicht für eigene Render-Listen nutzen.
6. Tutor-URL überall eingesetzt, Vorbereitungs-Block aus W1 entfernt, Startseite gekürzt, Literatur-PDFs in `literature/` abgelegt, Hausaufgabe Signavio/UiPath in W1 ergänzt, Bild-Duplikate gelöscht.

Ende des Briefings.
