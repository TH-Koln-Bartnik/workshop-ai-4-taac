# Umsetzungsplan: Slideshow „LLM-Workflows — welches Muster wann?"

Stand: 24.09.2026 · Auftraggeber: Prof. Dr. Roman Bartnik, TH Köln · Einsatz: Workshop 2 „KI in Tax, Audit & Advisory", Fr 25.09.2026

Dieser Plan ist eine vollständige Bauanleitung. Ein ausführendes Modell soll daraus ohne Rückfragen eine RevealJS-Slideshow in Quarto erzeugen. Alle inhaltlichen Entscheidungen sind getroffen; das Modell setzt um, erfindet nichts hinzu und lässt nichts weg.

---

## 1. Auftrag in einem Absatz

Baue die Datei `slides/06-llm-workflows.qmd` im Repo `32-Workshop-KI-Tax-Audit-2026-05-12` (GitHub Pages: <https://th-koln-bartnik.github.io/workshop-ai-4-taac/>). Zwölf Folien, 15 Minuten Vortragszeit, Sprache Deutsch, Anrede „Sie". Die Slideshow erklärt die sechs Bausteinmuster aus Anthropics Artikel *Building effective agents* (Schluntz & Zhang, 2024) mit den acht Originalabbildungen aus `images/anthropic-*.webp`. Lernziel: Die Studierenden können für eine gegebene Aufgabe aus Tax, Audit und Advisory begründen, welches Workflow-Muster passt und warum ein einfacheres nicht reicht.

## 2. Zielgruppe und Lernziel

Zielgruppe sind Studierende des Schwerpunkts Tax, Audit & Advisory ohne IT-Vorbildung. Sie kennen aus Workshop 1 die Unterscheidung Process Automation vs. Cognitive Automation, das 4D-Framework (Delegate, Describe, Discern, Diligence), RTF/CREATE-Prompts und RAGAS. Aus Workshop 2 Block 1 kennen sie die drei Qualitätsschichten (Prompt-Engineering, Deterministic Quoting, Goldstandard).

Lernziel (eine Zeile, auf Folie 2 und in den Notes wiederholen): *Sie können für eine Aufgabe aus Ihrem Berufsfeld entscheiden, welches LLM-Workflow-Muster angemessen ist, und begründen, warum kein einfacheres genügt.*

Abgeleitete Teilziele: (a) den Unterschied Workflow (Code steuert den Ablauf) vs. Agent (Modell steuert den Ablauf) benennen; (b) die sechs Muster an ihrer Abbildung erkennen; (c) je Muster die Signalfrage „Wann passt es?" wiedergeben; (d) das Prinzip „so einfach wie möglich" auf einen eigenen Fall anwenden.

## 3. Einbettung in Workshop 2

Empfohlene Position: als **Block 2b „Cognitive Automation strukturieren — LLM-Workflows" (15 Min)** zwischen Block 2 (Diligence vertieft) und Block 3 (BPMN). Begründung: Block 3 modelliert Prozesse in BPMN, Block 4 zeigt Process Automation mit UiPath. Die LLM-Workflows sind das fehlende Gegenstück auf der Cognitive-Automation-Seite; die letzte Folie schlägt die Brücke zu BPMN (Gate = Gateway, Router = exklusives Gateway, Parallelization = paralleles Gateway). Diese Platzierung ist ein Vorschlag; das ausführende Modell ändert `parts/03-workshop02.qmd` **nicht** eigenmächtig, sondern liefert am Ende einen fertigen Textblock (siehe Abschnitt 9), den Roman einfügen kann.

## 4. Technische Vorgaben

Datei und Kopf: `slides/06-llm-workflows.qmd`. YAML-Header 1:1 von `slides/01-process-vs-cognitive.qmd` übernehmen und nur diese Felder ändern:

```yaml
title: "LLM-Workflows — welches Muster wann?"
subtitle: "Workshop 2 · Block 2b · 15 Minuten"
footer: 'Workshop „KI in Tax, Audit & Advisory" · TH Köln · Block 2b'
```

Alles Weitere bleibt: `theme: [default, ../styles.scss]`, `slide-number: c/t`, `chalkboard: true`, `logo: ../images/th-koeln-logo.png`, `transition: fade`, `width: 1280`, `height: 720`, weißer Titelhintergrund.

Bilder: ausschließlich die acht vorhandenen Dateien, relativ referenziert als `../images/anthropic-N-….webp`. Keine neuen Bilder erzeugen, keine Bilder bearbeiten. Jede Abbildung bekommt `fig-alt` (deutsch, ein Satz, beschreibt Struktur der Grafik). Bildbreite auf Musterfolien: `width="100%"` in einer 58-%-Spalte.

Folienlayout für die sechs Musterfolien (Folien 4–9) ist identisch und wird als festes Muster benutzt:

```markdown
# <Action Title als ganzer Satz> {background-color="#ffffff"}

::: {.columns}
::: {.column width="58%"}
![](../images/anthropic-N-….webp){fig-align="center" width="100%" fig-alt="…"}
:::
::: {.column width="42%"}
**Mechanik**  
- Stichwort · Stichwort

**Wann sinnvoll**  
- Signalfrage

**Beispiel TAAC**  
- Stichwort
:::
::::

::: {.source-box}
Abbildung: Schluntz, E., & Zhang, B. (2024, 19. Dezember). *Building effective agents*. Anthropic. https://www.anthropic.com/engineering/building-effective-agents
:::

::: notes
<Speaker Notes in ganzen Sätzen>
:::
```

Die Quellbox: Falls `styles.scss` keine Klasse `.source-box` besitzt, im YAML-Header unter `format.revealjs` ein `include-in-header`-Snippet ergänzen oder direkt im Dokument einen `<style>`-Block anlegen: `.source-box { position: absolute; bottom: 0.4em; left: 1em; right: 1em; font-size: 0.45em; color: #555; }`. Keine Farbwerte außerhalb der TH-Palette (TH Red #c81e0f, TH Magenta #b43092, TH Orange #ea5a00, Schwarz, Grautöne, Weiß) verwenden.

Sektionsfolien (Folie 1, 3, 11) mit `{background-color="#c81e0f"}` und weißer Schrift, wie in den bestehenden Slideshows. Alle anderen Folien weißer Hintergrund.

Rendern: Der Pre-Render-Hook in `_quarto.yml` ist auskommentiert, die Slides sind nicht Teil des Quarto-Books. Deshalb einzeln rendern: `quarto render slides/06-llm-workflows.qmd` (vorher `tools/render-slides.sh` lesen und, falls dort ein anderer Aufruf steht, diesen verwenden). Ergebnis: `slides/06-llm-workflows.html` plus Ordner `slides/06-llm-workflows_files/`. Nach dem Rendern die HTML-Datei im Browser öffnen und alle zwölf Folien durchklicken (Abnahme, Abschnitt 8).

Sprachkonventionen des Repos (verbindlich): Anrede „Sie"; deutsche Anführungszeichen „…"; englische Fachbegriffe bleiben englisch und werden bei erster Nennung in den Notes in einem Halbsatz erklärt (Workflow, Agent, Retrieval, Tool, Gate, Router, Orchestrator, Evaluator); „Übung" als Sammelbegriff; „Direkt zur Hand" als Name für die Kurzaktivität; keine Emojis auf Folien; keine ganzen Sätze im Folientext außer im Action Title.

## 5. Didaktisches Konzept

Roter Faden ist eine Steigerung von „ein Anruf beim Modell" bis „das Modell steuert sich selbst". Jede Musterfolie beantwortet dieselben drei Fragen in derselben Reihenfolge: Wie funktioniert es (Mechanik)? Wann ist es angemessen (Signalfrage)? Wie sieht es in Tax, Audit und Advisory aus (Beispiel)? Die Konstanz des Layouts senkt die kognitive Last; die Studierenden lernen das Raster einmal und lesen danach nur noch die Unterschiede.

Zentrale Botschaft, die dreimal fällt (Folie 2, Folie 11, Folie 12): *Die einfachste Lösung, die funktioniert, gewinnt. Komplexität nur, wenn sie messbar bessere Ergebnisse liefert.* Das ist Anthropics eigene Kernaussage: „find the simplest solution possible, and only increase complexity when needed" (Schluntz & Zhang, 2024).

Leitmetapher für alle Folien: **die Kanzlei als Organisation**. Ein einzelner LLM-Aufruf ist ein Sachbearbeiter, Workflows sind Arbeitsanweisungen und Laufzettel, der Agent ist ein erfahrener Mitarbeiter, dem man ein Ziel gibt statt einer Anweisung. Die Metapher wird auf Folie 2 eingeführt und auf jeder Musterfolie in einem Satz der Notes weitergeführt. Keine zweite konkurrierende Metapher aufmachen.

Aktivierung: Auf Folie 6 eine Ein-Satz-Frage ins Plenum, auf Folie 12 eine dreiminütige „Direkt zur Hand"-Übung. Mehr Interaktion passt nicht in 15 Minuten.

Anschlüsse an bereits Bekanntes (in den Notes explizit nennen): Retrieval → RAG aus der Wissensbasis; Gate und Evaluator → Discern und die drei Qualitätsschichten aus Block 1; Voting → Übung 5 „Best-of-N"; Agent mit Human-Checkpoint → Diligence; Muster als Ganzes → BPMN in Block 3.

## 6. Folienplan (12 Folien)

Zeitbudget: Folie 1–3 zusammen 3 Min, Folie 4–10 je 1 Min (7 Min), Folie 11 2 Min, Folie 12 3 Min.

### Folie 1 — Titel

Action Title: **LLM-Workflows — welches Muster wann?**
Untertitel: Workshop 2 · Block 2b · 15 Minuten · Prof. Dr. Roman Bartnik, TH Köln
Bild: keines (Titelfolie aus YAML).
Notes: „Gestern haben Sie gelernt, einen Prompt präzise zu formulieren. Heute geht es um die Frage, was passiert, wenn ein Prompt nicht reicht. Die Antwort heißt: Man baut aus mehreren Aufrufen ein System. Anthropic hat dafür Ende 2024 eine kleine Baukastensprache veröffentlicht, die sich in der Praxis durchgesetzt hat. Sie lernen heute sechs Bausteine und vor allem: wann welcher passt."

### Folie 2 — Ein Prompt ist ein Sachbearbeiter, ein Workflow ist die Kanzlei

Action Title: **Ein einzelner Prompt reicht, bis die Aufgabe Zwischenprüfungen, Verzweigungen oder mehrere Perspektiven braucht**
Slide-Text (links, 3 Zeilen):
- **Workflow** — Ablauf im Code vordefiniert, Modell füllt Schritte aus
- **Agent** — Modell entscheidet selbst über Schritte und Werkzeuge
- **Grundregel** — so einfach wie möglich, Komplexität nur bei messbarem Nutzen
Slide-Text (rechts, als Kasten): Lernziel des Blocks: *Für eine Aufgabe aus Ihrem Berufsfeld entscheiden, welches Muster passt, und begründen, warum kein einfacheres genügt.*
Bild: keines.
Quellbox: Schluntz & Zhang (2024).
Notes: Definitionen wörtlich nach Anthropic übersetzen und erklären: Workflows sind Systeme, in denen Sprachmodelle und Werkzeuge über vordefinierte Code-Pfade orchestriert werden; Agenten sind Systeme, in denen das Modell seinen eigenen Prozess und seine Werkzeugnutzung dynamisch steuert. Metapher einführen: Der einzelne Aufruf ist ein Sachbearbeiter, der eine Aufgabe bekommt und ein Ergebnis abliefert. Ein Workflow ist die Kanzlei drumherum, mit Laufzetteln, Vier-Augen-Prinzip und Postverteilung. Ein Agent ist der erfahrene Kollege, dem Sie ein Ziel geben, kein Verfahren. Dann die Grundregel: Anthropic empfiehlt ausdrücklich, mit dem einfachsten Ansatz zu beginnen und Komplexität nur hinzuzufügen, wenn sie das Ergebnis messbar verbessert — jedes zusätzliche Muster kostet Zeit, Geld und Nachvollziehbarkeit. Rhetorische Frage zum Schluss: „Was ist der Preis, wenn ich die Kanzlei aufbaue, obwohl ein Sachbearbeiter reicht?"

### Folie 3 — Der Baustein: das erweiterte Sprachmodell

Action Title: **Jeder Workflow besteht aus demselben Baustein — einem Modell mit Zugriff auf Akten, Werkzeuge und Notizen**
Bild: `anthropic-1-augmented-llm.webp` (58 % Spalte). fig-alt: „Ein Sprachmodell in der Mitte, das über gestrichelte Pfeile mit Retrieval, Tools und Memory verbunden ist; Eingabe links, Ausgabe rechts."
Slide-Text (42 % Spalte):
- **Retrieval** — Aktenschrank: Dokumente nachschlagen (RAG)
- **Tools** — Taschenrechner, Datenbank, E-Mail: Aktionen ausführen
- **Memory** — Notizbuch: Zwischenstände merken
Quellbox: Abbildung Schluntz & Zhang (2024).
Notes: „Bevor wir Muster bauen, ein Blick auf den Baustein. Anthropic nennt ihn *augmented LLM*, das erweiterte Sprachmodell. Es ist unser Sachbearbeiter, aber ausgestattet: Retrieval ist der Aktenschrank — das kennen Sie als RAG aus der Wissensbasis und aus der HGB-Suchübung. Tools sind Werkzeuge, die das Modell aufrufen darf, etwa einen Taschenrechner, eine Datenbankabfrage oder das Versenden einer E-Mail. Memory ist das Notizbuch, in dem Zwischenstände über mehrere Schritte erhalten bleiben. Wichtig: Alle sechs Muster, die jetzt folgen, verketten oder verzweigen genau diesen Baustein. Wer den Baustein versteht, versteht alle Muster."

### Folie 4 — Prompt Chaining

Action Title: **Prompt Chaining zerlegt eine Aufgabe in feste Schritte und prüft nach jedem Schritt, ob es weitergehen darf**
Bild: `anthropic-2-chain-workflow.webp`. fig-alt: „Drei aufeinanderfolgende LLM-Aufrufe in einer Kette; nach dem ersten Aufruf ein Gate, das bei Pass weiterleitet und bei Fail zum Exit führt."
Slide-Text:
- **Mechanik** — Schritt → Gate (Prüfung im Code) → Schritt → Schritt
- **Wann sinnvoll** — Aufgabe lässt sich sauber in feste Teilschritte zerlegen
- **Beispiel TAAC** — Eingangsrechnung: Daten extrahieren → Gate: Pflichtangaben nach § 14 UStG vollständig? → Kontierungsvorschlag → Buchungstext
Quellbox: Abbildung Schluntz & Zhang (2024).
Notes: „Das erste Muster ist die Kette. Jeder Aufruf bekommt das Ergebnis des vorherigen. Zwischen den Aufrufen steht ein *Gate*, ein Tor: eine Prüfung, die kein Modell vornimmt, sondern ein Stück deterministischer Code — etwa: Sind alle Pflichtfelder gefüllt? Fällt die Prüfung durch, endet der Ablauf, und ein Mensch übernimmt. In der Kanzlei ist das der Laufzettel: Schritt eins, Stempel, Schritt zwei, Stempel. Anthropics Bedingung wörtlich: Das Muster passt, wenn die Aufgabe sich leicht und sauber in feste Teilaufgaben zerlegen lässt. Der Preis ist Latenz, der Gewinn ist Genauigkeit, weil jeder Aufruf nur eine kleine, klare Aufgabe hat. Beispiel Eingangsrechnung: Zuerst extrahiert das Modell die Rechnungsdaten. Das Gate prüft mit einer festen Liste, ob die Pflichtangaben nach § 14 UStG vorhanden sind — das ist kein Modell, das ist eine Checkliste im Code. Erst dann schlägt das Modell die Kontierung vor und formuliert den Buchungstext. Anschluss an Block 1: Das Gate ist die deterministische Schicht Ihrer Qualitätssicherung."

### Folie 5 — Routing

Action Title: **Routing sortiert Eingaben zuerst in Kategorien und schickt jede auf den Weg, der für sie gebaut ist**
Bild: `anthropic-3-llm-router.webp`. fig-alt: „Ein Router-Aufruf verteilt eine Eingabe auf einen von drei alternativen LLM-Aufrufen, die alle zur Ausgabe führen."
Slide-Text:
- **Mechanik** — Router klassifiziert → genau ein Spezialpfad wird gewählt
- **Wann sinnvoll** — klar trennbare Kategorien, die unterschiedlich behandelt werden
- **Beispiel TAAC** — Mandantenpostfach: Terminfrage → Standardantwort, kleines Modell · Frage zum Steuerbescheid → Fachpfad mit Retrieval · Beschwerde → direkt an Mensch
Quellbox: Abbildung Schluntz & Zhang (2024).
Notes: „Das zweite Muster ist die Poststelle. Ein erster Aufruf tut nichts anderes, als die Eingabe zu klassifizieren; danach läuft genau ein spezialisierter Pfad. Warum lohnt sich das? Weil ein Prompt, der alles können soll, in allem mittelmäßig wird. Anthropic nennt zwei Bedingungen: Die Kategorien müssen sich klar unterscheiden lassen, und sie müssen getrennt besser bearbeitet werden als gemeinsam. Ein zweiter Nutzen ist Kostenkontrolle: Einfache Fälle gehen an ein kleines, schnelles Modell, schwierige an das große. Beispiel Mandantenpostfach: Die Terminfrage bekommt eine Standardantwort vom kleinen Modell. Die Frage zum Steuerbescheid geht in einen Pfad mit Zugriff auf die Mandantenakte. Die Beschwerde geht an keinen Pfad, sondern an einen Menschen — Routing darf auch aus dem System hinausführen. Verbindung zu gestern: Der Router ist ein Klassifikationsprompt, nichts weiter; Sie können ihn mit RTF selbst schreiben."

### Folie 6 — Parallelization

Action Title: **Parallelization lässt mehrere Aufrufe gleichzeitig arbeiten — für Tempo bei Teilaufgaben oder für Sicherheit durch mehrere Meinungen**
Bild: `anthropic-4-llm-parallelization.webp`. fig-alt: „Eine Eingabe geht gleichzeitig an drei LLM-Aufrufe, deren Ergebnisse ein Aggregator zu einer Ausgabe zusammenführt."
Slide-Text:
- **Mechanik** — gleichzeitig laufende Aufrufe → Aggregator führt zusammen
- **Zwei Varianten** — *Sectioning*: unabhängige Teilaufgaben · *Voting*: dieselbe Aufgabe mehrfach, Mehrheit entscheidet
- **Wann sinnvoll** — Teilaufgaben unabhängig (Tempo) oder mehrere Perspektiven nötig (Sicherheit)
- **Beispiel TAAC** — Sectioning: Anhang zum Jahresabschluss parallel auf Vollständigkeit, Rechenkonsistenz und Formulierung prüfen · Voting: drei unabhängige Prüfungen, ob ein Bewirtungsbeleg alle Pflichtangaben trägt
Quellbox: Abbildung Schluntz & Zhang (2024).
Notes: „Das dritte Muster ist das Sechs-Augen-Prinzip. Mehrere Aufrufe laufen gleichzeitig, ein Aggregator — wieder Code oder ein weiterer Aufruf — führt die Ergebnisse zusammen. Anthropic unterscheidet zwei Spielarten. *Sectioning* teilt die Aufgabe in unabhängige Abschnitte: Ein Aufruf prüft den Anhang zum Jahresabschluss auf Vollständigkeit, einer auf Rechenkonsistenz, einer auf Formulierung — drei Spezialisten statt eines Generalisten, und schneller obendrein. *Voting* stellt dieselbe Frage mehrfach und lässt die Mehrheit entscheiden — sinnvoll, wenn ein einzelner Aufruf gelegentlich danebenliegt und der Fehler teuer ist. Das kennen Sie aus Übung 5 als Best-of-N. Frage ins Plenum, kurz warten: Wann hilft Voting nicht? Antwort: Wenn alle drei Aufrufe denselben systematischen Fehler machen, etwa dieselbe falsche Rechtsauffassung aus dem Trainingswissen — dann stimmen drei Falsche einstimmig ab. Voting erhöht Zuverlässigkeit gegen Zufallsfehler, nicht gegen Wissenslücken."

### Folie 7 — Orchestrator-Workers

Action Title: **Orchestrator-Workers lässt ein Modell die Arbeit aufteilen, wenn vorher niemand weiß, welche Teilaufgaben nötig sind**
Bild: `anthropic-5-llm-orchestrator.webp`. fig-alt: „Ein Orchestrator-Aufruf verteilt dynamisch an drei Worker-Aufrufe, deren Ergebnisse ein Synthesizer zur Ausgabe zusammenfasst."
Slide-Text:
- **Mechanik** — Orchestrator zerlegt → Worker bearbeiten → Synthesizer fasst zusammen
- **Unterschied zu Parallelization** — die Zerlegung entscheidet das Modell, nicht der Code
- **Wann sinnvoll** — komplexe Aufgabe, Teilaufgaben nicht vorhersagbar
- **Beispiel TAAC** — Due-Diligence-Recherche: Orchestrator entscheidet je nach Zielunternehmen, welche Quellen (Handelsregister, Abschlüsse, Presse, Rechtsstreitigkeiten) Worker durchsuchen
Quellbox: Abbildung Schluntz & Zhang (2024); Vertiefung Anthropic (2025).
Notes: „Das vierte Muster sieht der Parallelization ähnlich, und genau darin liegt die Prüfungsfrage. Der Unterschied ist, wer die Aufgabe zerlegt. Bei Parallelization haben Sie die drei Aufrufe vorher festgelegt. Beim Orchestrator entscheidet ein Modell zur Laufzeit, welche Teilaufgaben es gibt und wie viele Worker es braucht. In der Kanzlei ist das der Projektleiter, der ein Mandat bekommt, das Team zusammenstellt und am Ende den Bericht schreibt. Anthropics Bedingung: geeignet für komplexe Aufgaben, bei denen Sie die nötigen Teilaufgaben nicht vorhersagen können. Beispiel Due Diligence: Für ein Handwerksunternehmen sind andere Quellen relevant als für ein Software-Start-up; der Orchestrator entscheidet das aus dem Sachverhalt heraus. Der Preis: Sie geben Kontrolle über den Ablauf ab und zahlen für viele Aufrufe. Anthropic beschreibt in einem zweiten Artikel (2025), wie ihr eigenes Recherche-System genau so gebaut ist und etwa fünfzehnmal mehr Rechenaufwand verbraucht als ein einzelner Chat — deshalb nur einsetzen, wenn der Wert der Aufgabe das trägt."

### Folie 8 — Evaluator-Optimizer

Action Title: **Evaluator-Optimizer lässt ein Modell entwerfen und ein zweites prüfen, bis der Entwurf klare Kriterien erfüllt**
Bild: `anthropic-6-llm-evaluator-optimizer.webp`. fig-alt: „Ein Generator-Aufruf sendet eine Lösung an einen Evaluator-Aufruf; bei Ablehnung geht Feedback zurück, bei Annahme folgt die Ausgabe."
Slide-Text:
- **Mechanik** — Generator entwirft → Evaluator prüft gegen Kriterien → Feedback-Schleife bis „Accepted"
- **Wann sinnvoll** — Bewertungskriterien klar formulierbar, Iteration bringt messbar bessere Ergebnisse
- **Beispiel TAAC** — Stellungnahme ans Finanzamt: Evaluator prüft Checkliste (Rechtsgrundlagen zitiert? Frist genannt? Sachverhalt vollständig? Tonalität?) und gibt Entwurf mit Anmerkungen zurück
- **Grenze** — der Evaluator ist selbst ein Modell
Quellbox: Abbildung Schluntz & Zhang (2024); Grenze: Magesh et al. (2025).
Notes: „Das fünfte Muster ist Autor und Lektor. Ein Aufruf schreibt, ein zweiter bewertet gegen eine Checkliste und schickt den Entwurf mit Anmerkungen zurück, so lange, bis die Kriterien erfüllt sind. Anthropic nennt zwei Bedingungen: Die Kriterien müssen sich klar formulieren lassen, und die Iteration muss messbar etwas bringen — dann lohnt das Muster, sonst kostet es nur Zeit. Beispiel Stellungnahme ans Finanzamt: Der Evaluator prüft, ob die Rechtsgrundlagen zitiert sind, ob die Frist genannt ist, ob der Sachverhalt vollständig ist und ob die Tonalität passt. Jetzt der Anschluss an Block 1: Der Evaluator ist selbst ein Sprachmodell, also derselbe Vorbehalt wie bei der Faithfulness-Metrik in RAGAS. Magesh und Kollegen haben 2025 gezeigt, dass modellbasierte Bewertung Halluzinationen in juristischen Texten systematisch unterschätzt. Deshalb: Evaluator für Struktur und Tonalität, deterministische Prüfung für Zitate, Mensch für die Rechtsauffassung. Das Muster ersetzt Ihre Discern-Pflicht nicht, es verlagert sie an eine bessere Stelle."

### Folie 9 — Autonomer Agent

Action Title: **Ein Agent bekommt ein Ziel statt eines Ablaufs und entscheidet selbst, welche Werkzeuge er in welcher Reihenfolge nutzt**
Bild: `anthropic-7-llm-autonomous-agents.webp`. fig-alt: „Ein LLM-Aufruf im Austausch mit einem Menschen; er führt Aktionen in einer Umgebung aus, erhält Feedback zurück und kann in einen Stop-Zustand wechseln."
Slide-Text:
- **Mechanik** — Schleife: Aktion → Feedback aus der Umgebung → nächste Aktion → Stop
- **Wann sinnvoll** — Zahl der Schritte nicht vorhersagbar, kein fester Pfad hinterlegbar
- **Voraussetzungen** — Werkzeuge mit verlässlichem Feedback · Sandbox zum Testen · Guardrails · Human-Checkpoints
- **Beispiel TAAC** — Belegsammlung eines Mandanten aufräumen: Ordner durchsuchen, fehlende Belege identifizieren, Nachfragen formulieren — bei Unsicherheit stoppen und Mensch fragen
Quellbox: Abbildung Schluntz & Zhang (2024).
Notes: „Das sechste Muster ist kein Workflow mehr. Der Agent bekommt ein Ziel, plant selbst, führt eine Aktion aus, liest das Feedback aus der Umgebung und entscheidet den nächsten Schritt — bis er fertig ist oder ein Mensch ihn stoppt. In der Kanzlei ist das der erfahrene Kollege, dem Sie sagen: „Bringen Sie die Belegsammlung von Mandant Müller in Ordnung." Er entscheidet selbst, welche Ordner er öffnet, was fehlt und wen er fragt. Anthropics Bedingung wörtlich übersetzt: geeignet, wenn die Zahl der Schritte schwer oder gar nicht vorhersagbar ist und Sie keinen festen Pfad hinterlegen können. Anthropic warnt gleichzeitig: höhere Kosten, und Fehler können sich über die Schleife aufschaukeln. Deshalb drei Voraussetzungen: Werkzeuge, die ehrliches Feedback geben — der Agent muss merken, wenn etwas schiefgeht; eine Sandbox, also eine geschützte Testumgebung; und Human-Checkpoints, Haltepunkte, an denen ein Mensch freigibt. Anschluss an Diligence: Der Agent handelt in Ihrem Namen. Wer haftet? Sie. Also legen Sie die Haltepunkte fest, bevor Sie ihn losschicken."

### Folie 10 — Der Agent im Ablauf

Action Title: **In der Praxis läuft ein Agent in zwei Schleifen — Klärung mit dem Menschen vorab, Prüfung gegen die Umgebung bis alle Tests bestehen**
Bild: `anthropic-8-llm-autonomous-agents.webp` — Hochformat, deshalb Layout abweichend: Bild in 45-%-Spalte links, `height="600px"`, Text rechts. fig-alt: „Sequenzdiagramm mit vier Spalten Human, Interface, LLM, Environment; oben eine Schleife ‚Until tasks clear' zwischen Mensch und Modell, unten eine Schleife ‚Until tests pass' zwischen Modell und Umgebung."
Slide-Text:
- **Schleife 1 — „Until tasks clear"** — Mensch und Modell klären den Auftrag, bevor es losgeht
- **Schleife 2 — „Until tests pass"** — Modell arbeitet, prüft, korrigiert, bis die Umgebung „bestanden" meldet
- **Übertragen auf TAAC** — Tests = deterministische Prüfliste (Pflichtangaben, Fristen, Zitat-IDs)
- **Mensch sieht** — Anfang (Klärung) und Ende (Anzeige), dazwischen arbeitet das System
Quellbox: Abbildung Schluntz & Zhang (2024); Beispiel Software-Entwicklung (SWE-bench).
Notes: „Diese Abbildung zeigt Anthropics Coding-Agenten als Sequenzdiagramm — lesen Sie sie von oben nach unten. Zwei Schleifen sind entscheidend. Oben: *Until tasks clear.* Der Agent fragt nach, bis der Auftrag klar ist. Das ist Describe aus Workshop 1, nur dass das Modell die Rückfragen stellt. Unten: *Until tests pass.* Das Modell schreibt Code, lässt Tests laufen, liest das Ergebnis, korrigiert — bis alle Tests bestehen. Warum funktioniert das bei Software so gut? Weil Tests ein ehrliches, deterministisches Feedback sind. Die Übertragungsfrage für Ihr Berufsfeld lautet also: Was sind unsere Tests? Antwort aus Block 1: Pflichtangaben-Checklisten, Fristenberechnungen, Deterministic Quoting mit Zitat-IDs. Wo Sie solche Tests haben, kann ein Agent verlässlich arbeiten. Wo Sie sie nicht haben, bleibt es beim Workflow mit Mensch am Gate. Beachten Sie, wo der Mensch im Bild vorkommt: ganz oben und ganz unten. Dazwischen arbeitet das System allein — das ist die Diligence-Frage: Reicht Ihnen das, oder brauchen Sie einen Haltepunkt in der Mitte?"

### Folie 11 — Entscheidungshilfe

Action Title: **Die Wahl des Musters folgt aus drei Fragen: Kenne ich die Schritte, kenne ich die Kriterien, kenne ich die Zahl der Schritte?**
Layout: Tabelle über die volle Breite, Schriftgröße 0.7em, Zeilen als Fragments einblenden (`::: {.fragment}` je Zeile ist in Markdown-Tabellen nicht möglich; stattdessen Tabelle komplett zeigen und die Notes führen). Roter Sektionshintergrund **nicht** verwenden, weiße Folie mit Tabelle.

| Muster | Signalfrage | Passt, wenn … | Beispiel TAAC |
|---|---|---|---|
| Einzelner Prompt | Reicht ein Aufruf? | Aufgabe klein, ein Ergebnis, kein Zwischencheck | Fristberechnung erklären |
| Prompt Chaining | Kenne ich die Schritte? | feste Teilschritte, Prüfung dazwischen | Rechnung extrahieren → prüfen → kontieren |
| Routing | Gibt es klare Kategorien? | Eingaben unterscheiden sich, Pfade auch | Mandantenpostfach sortieren |
| Parallelization | Sind Teile unabhängig oder brauche ich Mehrheiten? | Tempo oder Zuverlässigkeit | Anhang dreifach prüfen |
| Orchestrator-Workers | Weiß ich vorher nicht, welche Teile nötig sind? | komplexe, offene Aufgabe | Due-Diligence-Recherche |
| Evaluator-Optimizer | Kann ich „gut" als Checkliste formulieren? | klare Kriterien, Iteration lohnt | Stellungnahme ans Finanzamt |
| Agent | Kenne ich die Zahl der Schritte nicht? | offener Pfad, ehrliches Feedback aus Werkzeugen, Haltepunkte | Belegsammlung aufräumen |

Unter der Tabelle eine Zeile in TH Red: **Regel: Von oben nach unten lesen und beim ersten passenden Muster stehen bleiben.**
Quellbox: Zusammenstellung nach Schluntz & Zhang (2024).
Notes: „Das ist die Folie, die Sie sich merken sollen. Lesen Sie die Tabelle von oben nach unten und bleiben Sie beim ersten Muster stehen, das passt — das ist Anthropics Grundregel in Tabellenform. Drei Fragen tragen die Entscheidung: Kenne ich die Schritte? Dann Kette oder Router. Kenne ich die Kriterien? Dann Evaluator. Kenne ich die Zahl der Schritte nicht? Erst dann Orchestrator oder Agent. Anthropic ergänzt drei Bauprinzipien, die für alle Muster gelten: Einfachheit — so wenige Bausteine wie möglich; Transparenz — das System soll zeigen, was es plant, damit Sie es prüfen können; und sorgfältig gestaltete Werkzeuge — Anthropic berichtet, dass sie mehr Zeit in die Beschreibung der Werkzeuge gesteckt haben als in den eigentlichen Prompt. Für Sie heißt das: Ein Workflow ist nur so gut wie die Prüfliste an seinem Gate."

### Folie 12 — Direkt zur Hand und Brücke zu BPMN

Action Title: **Ordnen Sie drei Aufgaben aus Ihrem Berufsfeld einem Muster zu — und zeichnen Sie sie gleich in BPMN**
Slide-Text (links):
**Direkt zur Hand · 3 Min · zu zweit**
- Wählen Sie drei Aufgaben aus Ihrem Praktikum oder Studium
- Ordnen Sie jede einem Muster der Tabelle zu
- Begründen Sie in einem Satz, warum das nächst-einfachere nicht reicht
Slide-Text (rechts):
**Brücke zu Block 3 — BPMN**
- Gate → Gateway
- Router → exklusives Gateway (XOR)
- Parallelization → paralleles Gateway (AND)
- Agent → keine feste Notation, nur Start, Ziel und Haltepunkte
Quellbox: Schluntz & Zhang (2024); OMG (2014).
Notes: „Drei Minuten, zu zweit. Nehmen Sie drei Aufgaben, die Sie selbst schon einmal erledigt haben, und ordnen Sie sie einem Muster zu. Die Begründung ist der wichtige Teil: Warum reicht das nächst-einfachere Muster nicht? Wer nur „Agent" sagt, weil es beeindruckend klingt, hat die Folie davor nicht verstanden. Nach drei Minuten sammle ich zwei Beispiele. Und dann die Brücke zum nächsten Block: Alles, was Sie gerade gesehen haben, lässt sich in BPMN zeichnen. Das Gate ist ein Gateway. Der Router ist ein exklusives Gateway — genau ein Weg. Parallelization ist ein paralleles Gateway — alle Wege gleichzeitig. Nur der Agent sperrt sich: Für ihn zeichnen Sie Start, Ziel und die Haltepunkte, an denen ein Mensch freigibt, und lassen die Mitte offen. Damit haben Sie die Sprache, in der Sie in Block 3 entscheiden, welche Aktivität ein Bot übernimmt, welche ein Sprachmodell und welche Sie selbst."

Zusätzlich auf Folie 12 in den Notes (nicht auf der Folie) der Transparenzhinweis: „Bei der Erstellung dieser Slideshow wurde Claude Fable 5.1 / Cowork zur Planung, zur Aufwertung der Inhalte (speziell für Beispiele) und als Reviewer für Sprach- und Konsistenzchecks genutzt. Die Abbildungen stammen von Anthropic (Schluntz & Zhang, 2024). Alle Inhalte wurden von Roman Bartnik geprüft, überarbeitet und verantwortet."

## 7. Quellen und Zitierweise

Auf jeder Folie mit Abbildung die Quellbox in Vollform (Abschnitt 4). Auf Folien ohne Abbildung genügt „Schluntz & Zhang (2024)". Die APA-Vollform:

Schluntz, E., & Zhang, B. (2024, 19. Dezember). *Building effective agents*. Anthropic. https://www.anthropic.com/engineering/building-effective-agents

Anthropic. (2025, 13. Juni). *How we built our multi-agent research system*. https://www.anthropic.com/engineering/multi-agent-research-system

Magesh, V., Surani, F., Dahl, M., Suzgun, M., Manning, C. D., & Ho, D. E. (2025). Hallucination-free? Assessing the reliability of leading AI legal research tools. *Journal of Empirical Legal Studies, 22*(2), 216–242. https://doi.org/10.1111/jels.12413 — bereits in `references.bib` als `magesh2025hallucination`; Autoren und Fundstelle vor Verwendung gegen den Eintrag dort abgleichen und im Zweifel den Eintrag aus `references.bib` verwenden.

OMG. (2014). *Business Process Model and Notation (BPMN), Version 2.0.2*. Object Management Group. https://www.omg.org/spec/BPMN/2.0.2 — bereits in `references.bib` als `omg2014bpmn`.

Die beiden Anthropic-Einträge liegen in `images/Quellen.bib` (Schlüssel `anthropic2024agents`, `anthropic2025multiagent`) und sollen nach `references.bib` übernommen werden, damit das Skript sie zitieren kann. Beim Übernehmen die Autoren beim 2024-Artikel auf `Schluntz, Erik and Zhang, Barry` ergänzen. Kein weiterer Eintrag wird neu erfunden; fehlt eine Quelle, wird die Aussage gestrichen, nicht die Quelle erfunden.

Urheberrecht: Die acht Abbildungen sind Anthropics Grafiken. Sie werden unverändert, mit Quellenangabe und im Lehrkontext gezeigt. Das Repo steht unter CC BY-NC-SA 4.0; die Abbildungen sind davon ausgenommen. In der Quellbox von Folie 3 einmalig ergänzen: „Abbildungen © Anthropic, verwendet mit Quellenangabe im Lehrkontext."

## 8. Abnahmekriterien (vom ausführenden Modell selbst prüfen, bevor es abgibt)

Struktur: genau 12 Folien; Reihenfolge wie in Abschnitt 6; jede Folie hat einen Action Title als ganzen Satz; die sechs Musterfolien folgen dem identischen Layout aus Abschnitt 4.

Bilder: alle acht `anthropic-*.webp` genau einmal verwendet, jedes mit `fig-alt`; kein anderes Bild außer dem Logo; Pfade relativ `../images/…`; nach dem Rendern werden alle Bilder angezeigt (im Browser prüfen).

Text: keine ganzen Sätze im Folientext außer Action Title und der Lernziel-Zeile auf Folie 2; Anrede Sie; deutsche Anführungszeichen; englische Fachbegriffe unverändert; keine Emojis.

Notes: jede Folie hat einen `::: notes`-Block in ganzen Sätzen, 80–180 Wörter, mit mindestens einer direkten Ansprache oder Frage; Folie 12 enthält den Transparenzhinweis.

Quellen: jede Bildfolie hat die Quellbox mit URL; keine Quelle, die nicht in Abschnitt 7 steht; `references.bib` um die zwei Anthropic-Einträge ergänzt, sonst unverändert.

Rendern: `quarto render slides/06-llm-workflows.qmd` läuft fehlerfrei; die HTML-Datei öffnet, Folienzähler zeigt 12; Tabelle auf Folie 11 passt ohne Scrollen auf die Folie (sonst Schriftgröße auf 0.6em senken).

Was das Modell nicht tut: keine neuen Muster ergänzen, keine weiteren Beispiele erfinden, keine Änderung an `parts/03-workshop02.qmd`, `_quarto.yml` oder `styles.scss`, kein Commit, kein Push.

## 9. Lieferumfang

Das ausführende Modell liefert: (1) `slides/06-llm-workflows.qmd`, (2) die gerenderte `slides/06-llm-workflows.html` samt `_files`-Ordner, (3) die um zwei Einträge ergänzte `references.bib`, (4) einen Textblock für `parts/03-workshop02.qmd` im Stil der bestehenden `week-card`-Blöcke mit Header „🟦 Block 2b — Cognitive Automation strukturieren: LLM-Workflows · 15 Min", drei Sätzen Inhalt, einem Link auf die Slideshow und der „Direkt zur Hand"-Übung, den Roman selbst einfügt, (5) eine kurze Abnahmeliste nach Abschnitt 8 mit Häkchen.

---

## Anhang A — Kurzfassung des Quelltexts für das ausführende Modell

Die folgenden Bedingungen stammen aus Schluntz und Zhang (2024) und sind der inhaltliche Anker jeder Musterfolie. Das ausführende Modell paraphrasiert sie in den Notes, ohne die Bedeutung zu verschieben.

Prompt Chaining: ideal, wenn die Aufgabe sich leicht und sauber in feste Teilaufgaben zerlegen lässt; Ziel ist höhere Genauigkeit gegen den Preis höherer Latenz. Beispiele im Original: Marketingtext erzeugen und dann übersetzen; Gliederung schreiben, prüfen, dann Dokument.

Routing: funktioniert gut bei komplexen Aufgaben mit klar unterscheidbaren Kategorien, die getrennt besser bearbeitet werden. Beispiele: Kundenservice-Anfragen nach Typ verteilen; einfache Fragen an kleinere Modelle, schwere an große.

Parallelization: wirksam, wenn Teilaufgaben parallel laufen können (Tempo) oder mehrere Perspektiven für höhere Sicherheit nötig sind. Sectioning-Beispiele: Guardrails, in denen ein Aufruf antwortet und ein anderer auf unzulässige Inhalte prüft; automatisierte Evaluationen. Voting-Beispiele: Code auf Sicherheitslücken mehrfach prüfen; Inhalte auf Angemessenheit mit mehreren Schwellen bewerten.

Orchestrator-Workers: geeignet für komplexe Aufgaben, bei denen die nötigen Teilaufgaben nicht vorhersagbar sind; Unterschied zur Parallelization ist die dynamische Zerlegung durch das Modell. Beispiele: Code-Änderungen über mehrere Dateien; Recherche über mehrere Quellen.

Evaluator-Optimizer: besonders wirksam bei klaren Bewertungskriterien und wenn iterative Verfeinerung messbaren Mehrwert bringt; Kriterium: ein Mensch würde durch Feedback bessere Ergebnisse erzielen, und das Modell kann solches Feedback geben. Beispiele: literarische Übersetzung mit Kritikschleife; mehrrundige Recherche.

Agenten: geeignet für offene Probleme, bei denen die Zahl der Schritte schwer vorhersagbar ist und kein fester Pfad hinterlegt werden kann; Voraussetzung ist Vertrauen in die Entscheidungen des Modells; höhere Kosten und Möglichkeit sich aufschaukelnder Fehler; Empfehlung: ausgiebiges Testen in Sandboxes und geeignete Guardrails. Beispiele: SWE-bench-Aufgaben lösen; Computer-Use-Referenzimplementierung.

Drei Bauprinzipien: Einfachheit im Design; Transparenz durch sichtbare Planungsschritte; sorgfältig gestaltete Schnittstelle zwischen Agent und Werkzeugen (agent-computer interface) mit gründlicher Dokumentation und Tests der Werkzeuge.

## Anhang B — BibTeX für references.bib

```bibtex
@misc{anthropic2024agents,
  author = {Schluntz, Erik and Zhang, Barry},
  title  = {Building effective agents},
  year   = {2024},
  month  = dec,
  day    = {19},
  howpublished = {Anthropic Engineering Blog},
  url    = {https://www.anthropic.com/engineering/building-effective-agents},
  urldate = {2026-09-24}
}

@misc{anthropic2025multiagent,
  author = {{Anthropic}},
  title  = {How we built our multi-agent research system},
  year   = {2025},
  month  = jun,
  howpublished = {Anthropic Engineering Blog},
  url    = {https://www.anthropic.com/engineering/multi-agent-research-system},
  urldate = {2026-09-24}
}
```

---

*Transparenzhinweis: Dieser Umsetzungsplan wurde mit Claude Fable 5.1 / Cowork auf Basis des Anthropic-Artikels, der acht Abbildungen und der bestehenden Repo-Struktur erstellt. Alle Inhalte werden von Roman Bartnik geprüft, überarbeitet und verantwortet.*
