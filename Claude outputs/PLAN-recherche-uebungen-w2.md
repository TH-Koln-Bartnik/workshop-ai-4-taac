# Plan: Zwei Recherche-Übungen am Anfang von Workshop 2 (15 Min) und Durchnummerierung aller Übungen

Stand: 25.09.2026 · Datei: `parts/04-uebungen-w2-2026-ws.qmd` (plus Querverweise in `03-workshop02.qmd`, `01-workshop01.qmd`, `appendix/wissensbasis.qmd`) · Status: **umgesetzt am 25.09.2026** (siehe Abschnitt 9 für die getroffenen Annahmen; Deep-Research-Prompt aus Romans Datei vom 14.07.2026 unverändert übernommen, statt des Entwurfs in 5a).

## 1. Anspruch und Lernziel

Die beiden Übungen trennen zwei Tätigkeiten, die im Alltag verschwimmen: Informationen sammeln und Evidenz prüfen. Ein Deep-Research-Lauf sammelt schnell und breit; ob das Gesammelte belastbar ist, entscheidet ein zweiter, langsamerer Schritt — der Zugriff auf begutachtete Quellen über eine Fachdatenbank und ein Qualitätsfilter, den nicht das Modell setzt, sondern die Fachgemeinschaft (Peer Review, Journal-Rating). Die Analogie zur Prüfungspraxis trägt den ganzen Block: Der Suchstring ist das Arbeitspapier, das Suchprotokoll der Audit Trail; wer ihn nicht dokumentiert, kann seine Evidenz nicht verteidigen. Systematische Suche als Methode der Managementforschung geht auf Tranfield, Denyer und Smart (2003) zurück; die Übung übernimmt davon nur den Kern — Konzeptblöcke, dokumentierter String, explizite Ein- und Ausschlusskriterien.

Lernziel für die Lernziel-Box (eine Zeile): *einen Deep-Research-Auftrag so formulieren, dass er graue Literatur und begutachtete Evidenz getrennt ausweist, und dieselbe Frage als dokumentierte Suchstrategie in Business Source Premier mit VHB-Journalfilter anlegen.*

4D-Bezug: Describe (Prompt für die Suchstrategie) und Discern (Quellenprüfung: Peer Review, Rating, DOI), mit Brücke zu Diligence (Suchprotokoll als Nachweis).

## 2. Zeitplan (15 Min, in-class, Einzelarbeit, ein Think-Pair-Share für beide)

| Abschnitt | Dauer |
|---|---|
| Übung 1 — Benchmarking per Deep Research: Auftrag starten | 6 Min |
| Übung 2 — Suchstrategie-1-Pager für Business Source Premier | 7 Min |
| Think-Pair-Share zu beiden Übungen | 2 Min |

Reihenfolge mit Grund: Der Deep-Research-Lauf braucht 5–20 Minuten Rechenzeit. Er wird zuerst gestartet und läuft im Hintergrund, während Übung 2 und die beiden Recaps laufen. Das ist zugleich die erste Lektion des Tages über Delegate: Was lange dauert und nicht überwacht werden muss, gibt man zuerst ab.

**Budgetfolge:** Die Seite steht bei 169 Min in-class (180 verfügbar). Mit den 15 neuen Minuten wären es 184. Vorschlag: Übung 8 (HGB-RAG, bisher Übung 4) läuft standardmäßig in der Kurzvariante (30 statt 45 Min) → 169 Min. Alternative: Recap Delegate 18 → 15 Min und Recap Describe 12 → 10 Min, dann bleibt die HGB-Übung lang (174 Min).

## 3. Übung 1 — Benchmarking per Deep Research (6 Min)

**Kopfzeile:** Modus in-class · Einzelarbeit · Dauer 6 Min (plus Laufzeit im Hintergrund) · 4D-Bezug Delegate und Discern.

**Ablauf.**
Schritt 1 (1 Min): Deep-Research-Werkzeug öffnen (ChatGPT *Deep Research*, Gemini *Deep Research* oder Perplexity *Research* — dieselbe Auswahl wie in Workshop 1, Erweiterung Übung 3).
Schritt 2 (2 Min): Prompt aus `prompt-examples/deep-research-prompt-benchmark-evidenz-taac.txt` (neu, siehe Abschnitt 5) einfügen, Branchenfokus in Schritt 0 wählen, Lauf starten.
Schritt 3 (3 Min): Während der Lauf beginnt, drei Sätze in das eigene Protokoll schreiben: Welche Quellengruppen habe ich dem Modell erlaubt? Welche Prüfregel habe ich ihm auferlegt? Woran erkenne ich nachher, ob es sich daran gehalten hat? Diese drei Sätze sind der Maßstab für die Rückkehr zu diesem Bericht (Abschnitt 6).

**Hintergrundtext (kurz, im Skript):** Der bestehende Prompt v2 fragt nach Praxisbeispielen aus grauer Literatur. Der neue Prompt behält diesen Teil A und ergänzt Teil B „Wissenschaftliche Evidenz" und Teil C „Gegenüberstellung". Der Unterschied liegt in einer Zeile: Teil B darf nur Quellen aufnehmen, die begutachtet sind, und muss für jede den Evidenztyp nennen (Experiment, Feldstudie, Umfrage, Archivdaten, konzeptionell). Hintergrundlink in der Übungsbeschreibung: <https://www.vhbonline.org/services/vhb-rating-2024/teilratings>.

## 4. Übung 2 — Suchstrategie-1-Pager für Business Source Premier (7 Min)

**Kopfzeile:** Modus in-class · Einzelarbeit · Dauer 7 Min · 4D-Bezug Describe und Discern.

**Ablauf.**
Schritt 1 (3 Min): Prompt aus Abschnitt 5 in einen frischen Chat (starkes Modell, kein Deep Research) geben. Ergebnis: ein 1-Pager mit drei Konzeptblöcken, drei Suchstrings in EBSCO-Syntax, Journalfilter, Limitern und leerem Suchprotokoll.
Schritt 2 (3 Min): Business Source Premier über die DigiBib öffnen (<https://thb-koeln.digibib.net/eres/subject-area/Wirtschaft?defaults=on>, Anmeldung mit TH-Kennung; die Seite verlangt eine angemeldete Sitzung, von außen liefert sie 403). String (b) „präzise" in die erweiterte Suche kopieren, Limiter *Peer Reviewed* und Zeitraum 2020–2026 setzen, Trefferzahl und die ersten drei Titel ins Suchprotokoll eintragen. Wer unter 10 oder über 500 Treffer hat, wendet den vom Modell vorgeschlagenen Anpassungsschritt einmal an.
Schritt 3 (1 Min): Prüfen, ob die Zeitschriften im Journalfilter des Modells tatsächlich in den verlinkten VHB-Listen stehen — eine Stichprobe von zwei Titeln genügt. Nicht gefundene Titel streichen.

**Hintergrundtext (kurz, im Skript):** Business Source Premier ist die Fachdatenbank, über die die TH Köln Zeitschriftenaufsätze der Wirtschaftswissenschaften erschließt. Der Filter auf Peer Review sortiert nach dem Verfahren, das VHB-Rating nach dem Rang der Zeitschrift in der Fachgemeinschaft. Beides zusammen ist der Unterschied zwischen „ich habe etwas gefunden" und „ich kann belegen, dass das geprüft wurde".

**VHB-Teilratings, die in den Filter gehören (geprüft am 25.09.2026):**

| Teilrating | Link | A+/A-Zeitschriften (Auswahl, für Journalfilter) |
|---|---|---|
| STEU (Betriebswirtschaftliche Steuerlehre) | https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/STEU/VHB_Rating_2024_Area_rating_STEU_e_f.pdf — der vermutete Link existiert | A+: Accounting Review, Journal of Accounting Research, Journal of Accounting and Economics, Management Science · A: Contemporary Accounting Research, Accounting Organizations and Society, European Accounting Review, Review of Accounting Studies, National Tax Journal, Management Accounting Research |
| RECH (Rechnungswesen) — **neu aufnehmen, hier stehen die Audit-Journals** | https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/RECH/VHB_Rating_2024_Area_rating_RECH.pdf | A: Auditing: A Journal of Practice & Theory, Journal of Management Accounting Research, Journal of Business Ethics; B (für die Diskussion, ob B hinein darf): Journal of Information Systems, International Journal of Accounting Information Systems |
| WI (Wirtschaftsinformatik) | https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/WI/VHB_Rating_2024_Area_rating_WI.pdf (Übersichtsseite: der von Ihnen genannte Link) | A+: MIS Quarterly, Information Systems Research · A: Journal of the AIS, Journal of Management Information Systems, Information Systems Journal, European Journal of Information Systems, Journal of Strategic Information Systems, Journal of Information Technology |

Die Übungsbeschreibung nennt nur den Sammellink <https://www.vhbonline.org/services/vhb-rating-2024/teilratings>; die drei PDF-Links stehen im Prompt, damit das Modell nicht raten muss. Ob jede dieser Zeitschriften in Business Source Premier volltextindexiert ist, prüft Schritt 3 stichprobenartig — das ist absichtlich Teil der Übung.

## 5. Die beiden Prompts (Entwurf)

### 5a. Deep-Research-Prompt (neue Datei `prompt-examples/deep-research-prompt-benchmark-evidenz-taac.txt`)

```
# ROLLE
Du bist Research Analyst für Automation und Generative AI in Tax, Audit & Advisory. Du arbeitest transparent, trennst Praxisberichte von wissenschaftlicher Evidenz und erfindest keine Quellen.

# AUFGABE
Erstelle ein Benchmarking mit Evidenzprüfung zur Frage:
„Wie werden Arbeitsprozesse in Tax, Audit & Advisory heute automatisiert und mit generativer KI unterstützt — und welche wissenschaftliche Evidenz gibt es dafür?"

Definitionen: Prozessautomation = regelbasiert (RPA, BPMS, Skripte). Kognitive Automation = sprach- und urteilsbezogene Aufgaben durch LLMs, ergänzt um klassisches ML. Aufgabenanker: O*NET 13-2011.00 Accountants and Auditors.

## SCHRITT 0 — RÜCKFRAGE (ZUERST)
Frage nach dem Branchenfokus: (a) branchenagnostisch, (b) WP-Gesellschaften Big 4 / Mid-Tier, (c) Industrieunternehmen mit interner Finanz- und Revisionsfunktion, (d) öffentlicher Sektor, (e) Finanzdienstleister. Warte die Antwort ab.

## TEIL A — PRAXIS-BENCHMARK (graue Literatur 2023–2026)
Quellengruppen: Big 4, Tier-1-Beratungen, Berufsverbände (IFAC, AICPA, IDW, ACCA, ICAEW, IIA), Aufsicht (PCAOB, SEC, BaFin, ESMA), Vendor-Cases (SAP, BlackLine, MindBridge, UiPath, Celonis u. a.).
Ergebnis: Tabelle Anwendungsfall · Automationstyp (Prozess/Kognitiv/Hybrid) · Technologie · O*NET-Aufgabencluster · Reifegrad (Pilot/Skaliert/Standard) · Quelle · Markierung (VC) für Vendor-Case, (BC/VC) für Big-4-Doppelrolle.

## TEIL B — WISSENSCHAFTLICHE EVIDENZ (nur begutachtete Quellen)
Suche in Google Scholar, Semantic Scholar, Crossref, SSRN. Aufnahmeregel in dieser Reihenfolge:
  Stufe 1: Zeitschriften mit VHB-Rating 2024 A+, A oder B in den Teilratings STEU, RECH oder WI (Listen: https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/STEU/VHB_Rating_2024_Area_rating_STEU_e_f.pdf · https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/RECH/VHB_Rating_2024_Area_rating_RECH.pdf · https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/WI/VHB_Rating_2024_Area_rating_WI.pdf).
  Stufe 2: andere begutachtete Zeitschriften oder Konferenzen (ICIS, ECIS, AAA-Konferenzen).
  Stufe 3: Working Papers (SSRN, NBER, arXiv) — nur wenn Stufe 1–2 leer bleibt, und dann als „nicht begutachtet" markiert.
Für jede Quelle: DOI (aufgerufen und geprüft), Rating-Stufe, Evidenztyp (Experiment · Feldstudie · Umfrage · Archivdaten · konzeptionell), Stichprobe, Hauptbefund in einem Satz. Kannst Du eine Quelle nicht verifizieren, streiche sie und vermerke das.

## TEIL C — GEGENÜBERSTELLUNG
Tabelle: Praxisbehauptung aus Teil A · vorhandene Evidenz aus Teil B (oder „keine belastbare Evidenz gefunden") · Lücke. Schließe mit drei Forschungsfragen, die aus den Lücken folgen.

# FORMAT
Deutsch, englische Fachbegriffe unübersetzt und bei Erstnennung erklärt. Executive Summary (max. 150 Wörter), Teil A, Teil B, Teil C, Quellenliste als Tabelle (Autor · Jahr · Titel · Outlet · DOI/URL geprüft · Quellentyp · Rating-Stufe), BibTeX-Block. Zitierweise APA 7. Keine wörtlichen Übernahmen über 15 Wörter.
```

### 5b. Prompt für den Suchstrategie-1-Pager (in Übung 2 zum Kopieren)

```
# ROLLE
Sie sind Fachreferent:in für Wirtschaftswissenschaften an einer Hochschulbibliothek mit Erfahrung in systematischer Literaturrecherche in EBSCOhost Business Source Premier.

# AUFGABE
Erstellen Sie einen 1-Pager (max. 350 Wörter plus Suchstrings) mit einer Suchstrategie für Business Source Premier zur Forschungsfrage:
„Wie werden Arbeitsprozesse in Tax, Audit & Advisory automatisiert und mit generativer KI unterstützt — und welche wissenschaftliche Evidenz gibt es dazu?"

# VORGABEN
1. Konzeptblöcke: Zerlegen Sie die Frage in drei Blöcke — Berufsfeld · Technologie · Arbeitsprozess/Wirkung. Je Block 5–8 englische Suchbegriffe mit Trunkierung (*) und Phrasen in Anführungszeichen.
2. Suchstrings in EBSCO-Syntax (Feldcodes TI, AB, SU; Operatoren AND / OR / NOT; Nähe-Operator N5, wo sinnvoll): (a) breit, (b) präzise, (c) präzise mit Journalfilter.
3. Journalfilter für (c): über das Feld SO auf Zeitschriften mit VHB-Rating 2024 A+ oder A in den Teilratings STEU, RECH und WI beschränken. Listen: https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/STEU/VHB_Rating_2024_Area_rating_STEU_e_f.pdf · https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/RECH/VHB_Rating_2024_Area_rating_RECH.pdf · https://www.vhbonline.org/fileadmin/vhb/Services/vhb-rating/WI/VHB_Rating_2024_Area_rating_WI.pdf. Nennen Sie die aufgenommenen Zeitschriften und begründen Sie in einem Satz, ob Sie B-Journals (z. B. Journal of Information Systems, International Journal of Accounting Information Systems) ein- oder ausschließen.
4. Limiter: Peer Reviewed · 2020–2026 · Sprache Englisch oder Deutsch · Dokumenttyp Article.
5. Suchprotokoll: leere Tabelle mit den Spalten Datum · Datenbank · String · Limiter · Treffer · Bemerkung.
6. Prüfregel: drei Kriterien, an denen ich in der Trefferliste erkenne, dass die Strategie zu eng oder zu weit ist, mit je einem Anpassungsschritt.

# REGELN
Nur Zeitschriftentitel aus den verlinkten Listen. Wenn unsicher, ob ein Titel in Business Source Premier indexiert ist: mit (?) markieren, nicht weglassen. Keine Ergebnisse erfinden — der 1-Pager enthält Strategie und Protokoll, keine Treffer.
```

## 6. Rückkehr zum Deep-Research-Bericht (Entscheidung offen)

Der Bericht aus Übung 1 liegt nach den Recaps vor. Zwei Varianten:

Variante 1 (Standard, kostet keine Sitzungszeit): **Hausaufgabe bis zur In-Company-Session** unter Übung 1 als „Teil 2": Drei Quellen aus Teil B des Berichts prüfen — DOI aufrufen, Zeitschrift in den VHB-Listen suchen, Titel in Business Source Premier gegensuchen. Ergebnis: pro Quelle *verifiziert / nicht verifiziert* plus ein Satz, ob der Bericht die eigene Prüfregel (Schritt 3 der Übung) eingehalten hat. Passt zur Signavio-Hausaufgabe als zweites Mitbringsel für die Wirtschaftsprüfer.

Variante 2 (5 Min in-class): kurzer Rückblick vor der Regelwand — jede:r ruft eine Quelle aus Teil B auf und meldet in Socrative „verifiziert / nicht verifiziert". Kostet 5 Min, die im Budget nicht vorhanden sind.

## 7. Think-Pair-Share (2 Min, für beide Übungen)

Welche Quelle würde ich in einem Prüfungsbericht zitieren — eine aus dem Deep-Research-Lauf oder eine aus der Trefferliste in Business Source Premier — und woran mache ich den Unterschied fest? Was wäre passiert, wenn ich dem Deep-Research-Modell den Journalfilter nicht mitgegeben hätte?

## 8. Neue Nummerierung der gesamten Seite

| Neu | Bisher | Titel im Skript | Anker (unverändert) | Dauer |
|---|---|---|---|---|
| Übung 1 | — (neu) | Benchmarking per Deep Research | `#sec-deep-research-benchmark` (neu) | 6 Min |
| Übung 2 | — (neu) | Suchstrategie-1-Pager für Business Source Premier | `#sec-suchstrategie-bsp` (neu) | 7 Min |
| — | — | Think-Pair-Share zu Übung 1 und 2 | — | 2 Min |
| Übung 3 | Recap A | Prozessmodellierung mit Mermaid (Recap Delegate) | `#sec-mermaid` | 18 Min |
| Hausaufgabe | Hausaufgabe | BPMN in Signavio | `#sec-bpmn` | — |
| Übung 4 | Recap B | Prompt-Patterns am Studienalltag (Recap Describe) | `#sec-prompt-patterns-recap` | 12 Min |
| Übung 5 | Übung 1 | Prüfungsordnung mit zweistufigem Dialog-Prompt | `#sec-pruefungsordnung` | 30 Min |
| Übung 6 | Übung 2 | RAG-Evaluation mit Tutor-Bot | `#sec-ragas-tutor` | 15 Min |
| Übung 7 | Übung 3 | Tutor-Bot systematisch prüfen | `#sec-test-suite` | 22 Min |
| Übung 8 | Übung 4 | RAG-Suchübung HGB-Prüfungspflicht | `#sec-rag-hgb` | 30 Min (Kurzvariante als Standard; lang 45) |
| Übung 9 | Übung 5 | Diligence-Risiko-Recherche im Best-of-N | `#sec-diligence-bestof-n` | 22 Min |
| Abschluss | Abschluss | Regelwand (Socrative) | `#sec-regelwand` | 5 Min |
| Übung 10 | Übung 6 | Integrierter 4D-Use-Case (optional) | `#sec-4d-usecase` | 40 Min |

Summe in-class: 15 + 18 + 12 + 30 + 15 + 22 + 30 + 22 + 5 = **169 Min** (180 verfügbar).

Überschriftenformat: `## Übung 3 — Prozessmodellierung mit Mermaid (Recap Delegate) {#sec-mermaid}`. Die Anker bleiben, damit alle bestehenden Links weiter auflösen; nur der sichtbare Text ändert sich.

**Stellen, die mitziehen müssen (alle bekannt, keine Suche nötig):**

- `04-uebungen-w2-2026-ws.qmd`: Untertitel, HTML-Kommentar oben, Lernziel-Box (zwei neue Zeilen, „Recap Delegate/Describe" bleibt als Etikett), Einleitungsabsatz, Zeittabelle, alle Querverweise im Text — „Recap A" (Übung 8, Hausaufgabe BPMN), „Recap B" (Übung 5 Schritt 1 und TPS), „Übung 5" (Abschluss), „Block 2"-Verweise unverändert; Quellenabschnitt um VHB (2024) und Tranfield et al. (2003) ergänzen.
- `03-workshop02.qmd`: Badges Zeile 62–63 (Block 0) plus zwei neue Badges für Übung 1 und 2 davor; Zeile 168 (Recaps im Callout); Badges Übung 1–4 am Ende von Block 1 → Übung 5–8; Badge Übung 5 in Block 2 → Übung 9; Vorbereitungs-Box: Zugang zur DigiBib mit TH-Kennung testen, Deep-Research-Werkzeug bereithalten.
- `01-workshop01.qmd`: Badge-Link auf „W2 Übung 3" (Test-Suite) → „Übung 7".
- `appendix/wissensbasis.qmd`: Zeile 356 „Recap B" → „Übung 4 (Recap Describe)"; Zeile 479 „Recap A" → „Übung 3 (Recap Delegate)".
- `prompt-examples/`: neue Datei `deep-research-prompt-benchmark-evidenz-taac.txt`; v2 bleibt bestehen.
- `references.bib`: `vhb2024teilratings`, `tranfield2003systematic` (DOI 10.1111/1467-8551.00375, Crossref-geprüft).
- `drafts/untested-draft-…qmd`: unverändert lassen (eigene Nummerierung, Testseite).

## 9. Getroffene Annahmen (bei der Umsetzung, änderbar)

1. Position: beide Übungen ganz vorn als Übung 1 und 2, die Recaps folgen als Übung 3 und 4.
2. Budget: HGB-Übung (jetzt Übung 8) standardmäßig in der Kurzvariante (30 Min); die lange Fassung (45 Min) bleibt im Text. Summe in-class 169 Min.
3. Rückkehr zum Deep-Research-Bericht: als Hausaufgabe bis zur In-Company-Session (`#sec-deep-research-check`), kein In-class-Slot.
4. RECH-Teilrating aufgenommen (Audit-Journals stehen nur dort; *Auditing: A Journal of Practice & Theory* = A).
5. Deep-Research-Prompt: Romans Fassung vom 14.07.2026 (inhaltsgleich mit `prompt-examples/deep-research-prompt-automation-tax-audit-v2.txt`) unverändert im Klappkasten; der erweiterte Entwurf in 5a wurde nicht verwendet — die fehlende Evidenzstufe ist jetzt bewusst der didaktische Übergang zu Übung 2.

## Quellen

Tranfield, D., Denyer, D., & Smart, P. (2003). Towards a methodology for developing evidence-informed management knowledge by means of systematic review. *British Journal of Management, 14*(3), 207–222. https://doi.org/10.1111/1467-8551.00375

VHB – Verband der Hochschullehrerinnen und Hochschullehrer für Betriebswirtschaft e. V. (2024). *VHB-Rating 2024: Teilratings*. https://www.vhbonline.org/services/vhb-rating-2024/teilratings

```bibtex
@article{tranfield2003systematic,
  author  = {Tranfield, David and Denyer, David and Smart, Palminder},
  title   = {Towards a Methodology for Developing Evidence-Informed Management Knowledge by Means of Systematic Review},
  journal = {British Journal of Management},
  year    = {2003},
  volume  = {14},
  number  = {3},
  pages   = {207--222},
  doi     = {10.1111/1467-8551.00375}
}

@misc{vhb2024teilratings,
  author       = {{VHB -- Verband der Hochschullehrerinnen und Hochschullehrer f{\"u}r Betriebswirtschaft e. V.}},
  title        = {VHB-Rating 2024: Teilratings},
  year         = {2024},
  howpublished = {\url{https://www.vhbonline.org/services/vhb-rating-2024/teilratings}},
  urldate      = {2026-09-25}
}
```

*Transparenzhinweis: Dieser Plan wurde mit Claude Fable 5.1 / Cowork auf Basis des bestehenden Skripts, der Prompt-Vorlagen im Repo und der am 25.09.2026 geprüften VHB-Dokumente erstellt. Alle Inhalte werden von Roman Bartnik geprüft, überarbeitet und verantwortet.*
