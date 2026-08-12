# Interface writing

Headings, links, buttons, and descriptions — the short strings that make up an interface rather than a document body.

## Headings

Use AP-style sentence case for every heading — page titles, section and sub-section headings, and card/document titles alike:

- Capitalize only the first word, proper nouns, and acronyms/official names.
- Don't capitalize an ordinary word just because it's in a heading.
- No ending period.

This applies to the whole heading hierarchy of a page, not just the page title — a document's `h1`, its `h2` section headings, and any `h3` step or sub-item headings all follow the same rule. Interface labels (buttons, form labels, navigation-item labels) use plain sentence case the same way — no stylized all-caps (`text-transform: uppercase`) as a default emphasis or wayfinding device.

Keep heading text in sync across views of the same content — if a document's section/step titles also drive another rendering (a Flow view, a generated PDF, a search index), update every rendering together, not just the primary one.

## Descriptions

Write every card, list, and page description — the short body text under a title, and any `<meta name="description">` — as one sentence in plain language at roughly a 9th-grade reading level: short sentence, common words, no jargon, acronyms, or internal system names the reader wouldn't already know. Don't restate the title, and don't pad it with filler like "This page describes...". A landing or index-style page gets exactly one description line — don't stack a second lede paragraph under a heading that just restates the subtitle already shown above it.

## Links

Good link text names the destination or the action, not the mechanism of clicking: *"Apply for a building permit"* or *"Download the appeal form"*, never *"Click here"* or *"Read more"* on their own, and never a raw URL in body text unless the URL itself is what's needed. If two links on the same page have the same visible text but go to different places, add enough distinguishing text that they're not identical when read out of visual context (e.g., by a screen reader jumping link to link).

## Buttons and calls to action

Button text describes the action it performs — *"Submit application,"* not *"Submit"* alone if the page has more than one thing being submitted; *"Save draft"* vs. *"Send"* when both exist. Avoid vague action text (*Submit, OK, Click here*) when a more specific verb phrase is available.

## Related standards

- `plain-language.md` for organization, sentence structure, and the reasoning behind "answer the reader's question, don't just label the topic."
- `marin-digital-standards/accessibility/keyboard.md` and `focus.md` for the corresponding structural/operability requirements these labels attach to.
