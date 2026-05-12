# Diagnose-Quiz Items — Workshop 1

**Zweck:** Eingangs- und Ausgangstest zur Unterscheidung *Process Automation*, *Cognitive Automation* und *Nicht anwendbar*. Zehn Items, jedes mit einer Soll-Antwort und einer kurzen Begründung im Plenum.

**Auswahllogik:**

- Drei klare Process-Automation-Items, drei klare Cognitive-Automation-Items, zwei Nicht-anwendbar-Items, zwei bewusst gesetzte Grenzfälle, die im Plenum diskutierbar sind.
- Items stammen aus dem Berufsalltag von Accountants und Auditors (O\*NET 13-2011.00) sowie aus angrenzenden Advisory-Tätigkeiten.
- Begründungen folgen Lacity und Willcocks (2021): Process-Automation = regelbasierte Abarbeitung strukturierter Workflows; Cognitive Automation = KI-gestütztes Schließen, Klassifizieren, Zusammenfassen unstrukturierter Inhalte; Nicht anwendbar = Tätigkeit, die in Kern und Verantwortung beim Menschen bleibt.

## Item-Liste

| # | Item | Soll-Antwort | Begründung (Plenum) |
|---|---|---|---|
| 1 | E-Mails eines Sammelpostfachs nach Lieferantenname in vordefinierte Ordner sortieren. | Process Automation | Strukturierter Eingangstrigger, eindeutige Regel, deterministische Ausführung. Klassisches RPA. |
| 2 | Aus einem 40-seitigen Vertrag die zahlungsrelevanten Klauseln identifizieren und extrahieren. | Cognitive Automation | Unstrukturierter Text, semantische Klassifikation, Kontextabhängigkeit. Erfordert ein Sprachmodell, kein Regelwerk reicht. |
| 3 | Aus 200 Lohnbuchungen die Lohnsteuerabzüge nach geltendem Steuerklassen-Algorithmus berechnen. | Process Automation | Klar definierte Regeln, deterministische Berechnung, strukturierte Eingangsdaten. |
| 4 | Bei einem Mandantenanruf das Anliegen erfassen und an die zuständige Abteilung weiterleiten. | Cognitive Automation | Natürliche Sprache, Mehrdeutigkeit, Intent-Klassifikation. RPA scheitert an unstrukturierter Eingabe. |
| 5 | Eine Stellungnahme zu einer ungewöhnlichen Strukturierung im internationalen Steuerrecht entwerfen, deren Lösung im Gesetzeswortlaut nicht eindeutig vorgezeichnet ist. | Nicht anwendbar | Berufsrechtlicher Urteilskern. Weder regelbasiert noch durch ein generatives System verantwortbar — höchstens unterstützend. |
| 6 | Aus 500 Eingangsrechnungen jene identifizieren, denen die USt-ID-Nr. fehlt oder die syntaktisch ungültig ist. | Process Automation | Regelbasierte Validierung gegen Schema. Eindeutige Ja/Nein-Prüfung. |
| 7 | In einer Mandantendatenbank Schreibvariante-Duplikate finden (etwa „Müller GmbH" vs. „Mueller G.m.b.H." vs. „Müller Gesellschaft mit beschränkter Haftung"). | Cognitive Automation | Fuzzy-Match, semantische Ähnlichkeit. Deterministische String-Vergleiche scheitern an Varianten. |
| 8 | Strategische Empfehlungen für die Mandantenakquise im Mittelstand für die nächsten drei Jahre formulieren. | Nicht anwendbar | Strategisches Urteil mit Verantwortungs- und Risikodimension. Kein automatisierbarer Workflow. |
| 9 | Aus gescannten PDF-Eingangsrechnungen die Rechnungspositionen per OCR erkennen und in ein ERP-System einspielen. | Cognitive Automation (Grenzfall: hybrid) | Bilderkennung plus Klassifikation = Cognitive. Das anschließende Einspielen ist Process. Item dient der Diskussion über Hybrid-Workflows. |
| 10 | Aus einem Excel-Auszug die Top-10-Kunden nach Umsatz herausfiltern und in eine PowerPoint-Tabellenfolie übertragen. | Process Automation | Strukturierte Eingangsdaten, klar definierte Aggregation, deterministischer Output. |

## Verteilung

- Process Automation: Items 1, 3, 6, 10 (vier Items)
- Cognitive Automation: Items 2, 4, 7, 9 (vier Items, davon Item 9 als bewusster Grenzfall)
- Nicht anwendbar: Items 5, 8 (zwei Items)

## Auflösung im Plenum

Drei Leitfragen für die drei Minuten Plenum-Auflösung:

1. Welches Item war für Sie strittig zwischen *Process* und *Cognitive*? Was war der Grund?
2. Item 9 ist ein bewusster Hybrid. Wo verläuft die Grenze, wenn beide Kategorien in einem Workflow zusammenwirken?
3. Items 5 und 8 sind nicht anwendbar — nicht weil Technologie versagt, sondern weil Verantwortung beim Menschen bleibt. Wo verläuft diese Grenze in Ihrer eigenen Studien- oder Praxiserfahrung?

## Anbindung an das Widget

Das Widget unter `interactions/diagnose-quiz.html` enthält genau diese zehn Items. Antwortoptionen pro Item: **Process Automation · Cognitive Automation · Nicht anwendbar**. Auswertung am Ende des Quiz als Balken-Diagramm und Item-für-Item-Tabelle. Das Quiz wird **einmal** in Übung 1 durchlaufen (kein Re-Test, kein Pre/Post-Vergleich). Markdown-Export der eigenen Antworten als Mitnahme.

## Quellen

Lacity, M., & Willcocks, L. (2021). Becoming strategic with intelligent automation. *MIS Quarterly Executive*, *20*(2), 1–14.

Willcocks, L., & Lacity, M. (2024). The evolution of intelligent automation as a sourcing option. In L. Willcocks, I. Oshri, & J. Kotlarsky (Eds.), *Transformation in global outsourcing* (pp. 327–353). Springer. https://doi.org/10.1007/978-3-031-61022-6_9

U.S. Department of Labor, Employment and Training Administration. (2024). *Accountants and Auditors (13-2011.00)*. O\*NET OnLine. https://www.onetonline.org/link/summary/13-2011.00
