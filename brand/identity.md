# Identity

## Source

Primary source: the *County of Marin Identity Style Guide*, prepared by L Studio, updated May 2014, as published on marincounty.gov — the County's controlling public reference for logo use, identity hierarchy, color, typography, email signatures, website logo placement, social media avatars, video branding, and related visual standards.

Use the published guide (or an official file supplied for the task) as the source of truth for exact values. This standard preserves what's explicitly published; it doesn't invent modern implementation detail the guide predates.

**Known limitations**: official logo artwork isn't included here — request it or use a placeholder (see `logo.md`). Internal intranet templates aren't covered. Department-specific brand extensions may exist and should be confirmed with the responsible County team.

## Core principles

- Preserve official County identity. Never redraw, distort, recolor, crop, decorate, or improvise the County logo — see `logo.md` for the specific rules.
- Use official logo artwork when it's supplied. When it isn't, describe placement and usage rather than fabricating a logo — use a placeholder like `[Official County of Marin logo here]`.
- Never claim a generated asset is officially approved.
- Never invent brand colors, logo variants, seals, department marks, slogans, or lockups.
- Match the medium (print, presentation, email, social, video, web, report, flyer, chart, diagram, signage) — see `mediums.md`.
- Accessibility is a separate concern with its own standard (`marin-digital-standards/accessibility`) — a design-standard review doesn't double as an accessibility review, and vice versa.

## MarinOS product family identity

MarinOS apps and documentation are a distinct visual sub-brand under the County identity, implemented in `marin-ui`. The identity-level rules (as opposed to component/interaction rules, which are `marin-ui`/product-design concerns):

- Use the approved MarinOS product icon (the four-square mark) beside the product title on every app — see `marin-ui` for the exact SVG/markup.
- Group the app title and subtitle with the standard Marin gold left border.
- Every full page carries the standard MarinOS footer — the text `MarinOS`, linked to `https://marincountygov.github.io/marinos/`.
- Every full page carries a standard text-only Feedback control — no icon.
- Let light/dark presentation follow the operating system preference; don't add a manual theme toggle.

## Related standards

- `logo.md` — logo hierarchy, non-negotiable rules, minimum size, placement by medium.
- `color.md` — the County color palette and permitted foreground/background pairings.
- `typography.md` — approved typefaces and hierarchy.
- `imagery.md` — photography and icon guidance.
- `mediums.md` — how identity applies to email, presentations, reports, social, video, and forms.

Reviewing a specific asset against this standard is a `marin-skills` design-review workflow, not something this document does.
